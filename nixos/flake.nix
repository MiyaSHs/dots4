{
  inputs = {
    # NixOS official package source, using the nixos-unstable branch here
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

    catppuccin.url = "github:catppuccin/nix";

    hypr-contrib.url = "github:hyprwm/contrib";
    hyprpicker.url = "github:hyprwm/hyprpicker";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { nixpkgs, catppuccin, home-manager, ... }@inputs:
  let
    username = "awoeeq";
    system = "x86_64-linux";
    pkgs = import nixpkgs {
      inherit system;
      config.allowUnfree = true;
    };
    lib = nixpkgs.lib;
  in
  {
    nixosConfigurations = {
      awoeeq = nixpkgs.lib.nixosSystem {
        inherit system;
        modules = [ 
	  (import ./main)
	  catppuccin.nixosModules.catppuccin
          home-manager.nixosModules.home-manager
          {
            home-manager = {
	      useGlobalPkgs = true;
              useUserPackages = true;
	      extraSpecialArgs = { inherit inputs username; };
              users.${username} = {
	        imports = [
                  ./modules/home
                  catppuccin.homeManagerModules.catppuccin
                ];
		home.username = "${username}";
		home.homeDirectory = "/home/${username}";
                home.stateVersion = "24.05";
              };
            };
          }
	];
        specialArgs = { host="awoeeq"; inherit inputs username ; };

      };
    };
  };
}
