let
  nixpkgs = import <nixpkgs> { };
  pkgs = { mkDerivation = import ./autotools.nix nixpkgs; };
  allPkgs = nixpkgs // pkgs;

  callPackage = path: overrides:
    let f = import path;
    in f
    ((builtins.intersectAttrs (builtins.functionArgs f) allPkgs) // overrides);
in with allPkgs; {
  hello-v1 = import ./hello/hello-v1.nix;
  hello-v2 = import ./hello/hello-v2.nix;
  hello-v3 = import ./hello/hello-v3.nix;
  graphviz = import ./graphviz;

  graphviz-v2 = import ./graphviz/graphviz-v2.nix {
    inherit mkDerivation lib gd pkg-config;
    gdSupport = true;
  };

  graphvizCore-v2 = import ./graphviz/graphviz-v2.nix {
    inherit mkDerivation lib gd pkg-config;
    gdSupport = false;
  };

  graphviz-v2-cp = callPackage ./graphviz/graphviz-v2.nix { };
  graphvizCore-v2-cp =
    callPackage ./graphviz/graphviz-v2.nix { gdSupport = false; };
}
