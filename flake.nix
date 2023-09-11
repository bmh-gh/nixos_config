{
  description = "Experimental Flake v1.0";
  nixConfig.experimental-features = [ "nix-command" "flakes" ];

  inputs = {
    nixpkgs.url= "github:NixOS/nixpkgs/nixos-23.05";
    home-manager = {
      url = "github:nix-community/home-manager/release-23.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, home-manager }: {

    nixosConfigurations = {
     "testuser" = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          ./hosts/test-user
          home-manager.nixosModules.home-manager {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.users.bmh = {
              imports = [ ./home/test-user ];
            };
          }
        ];
      }; 
    };
  };
}