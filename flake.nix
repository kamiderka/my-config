{
  description = "NixOS configuration";

  inputs = {

    nixpkgs.url = "github:nixos/nixpkgs/nixos-24.05";
    nixpkgs-unstable.url = "github:nixos/nixpkgs/nixos-unstable";
    nixpkgs-stable.url = "github:nixos/nixpkgs/nixos-24.05";


    home-manager = {
      url = "github:nix-community/home-manager/release-24.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };


  };
  
  
  outputs = inputs@{ nixpkgs, nixpkgs-unstable,  home-manager, ... }: {
    nixosConfigurations = {
      msi-gf76  = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";

        modules = [
          ./hosts/msi-gf76

          home-manager.nixosModules.home-manager
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.backupFileExtension = "backup";            

            home-manager.extraSpecialArgs = inputs;
            home-manager.users.toringen = import ./home;
          }
        ];

      };
    };
  };


}
