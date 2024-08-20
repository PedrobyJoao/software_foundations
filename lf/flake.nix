{
  description = "Coq development environment";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs =
    { self
    , nixpkgs
    , flake-utils
    ,
    }:
    flake-utils.lib.eachDefaultSystem (
      system:
      let
        pkgs = import nixpkgs {
          inherit system;
          config = {
            allowUnfree = true;
          };
        };
      in
      {
        devShells.default = pkgs.mkShell {
          buildInputs = with pkgs; [
            coq
            # coqPackages.mathcomp
            # coqPackages.ssreflect
            # coqPackages.VST
            # coqPackages.coq-ext-lib
            # coqPackages.QuickChick
            # coqide
            # ocaml
            # ocamlPackages.findlib
            # ocamlPackages.ocamlbuild
          ];

          shellHook = ''
            echo "Welcome to the Coq development environment!"
            echo "Coq version: $(coqc --version)"
          '';
        };
      }
    );
}
