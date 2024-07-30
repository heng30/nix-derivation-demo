let
  pkgs = import <nixpkgs> { };
  mkDerivation = import ../autotools.nix pkgs;
in mkDerivation {
  name = "hello-v3";
  src = ./hello-2.12.1.tar.gz;
}
