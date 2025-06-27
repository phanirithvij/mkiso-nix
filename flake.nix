{
  description = "make isos using nix maybe";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
  };

  outputs =
    { self, nixpkgs }:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs {
        inherit system;
        config = { };
        overlays = [ ];
      };
    in
    {
      devShells.${system}.default = pkgs.mkShellNoCC {
        packages = [ pkgs.gitnr ];
      };
    };
}
