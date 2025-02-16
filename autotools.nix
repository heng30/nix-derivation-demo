pkgs: attrs:
let
  defaultAttrs = {
    builder = "${pkgs.bash}/bin/bash";
    args = [ ./builder.sh ];
    setup = ./setup.sh;
    baseInputs = with pkgs; [
      gnutar
      gzip
      gnumake
      gcc
      coreutils
      gawk
      gnused
      gnugrep
      binutils.bintools
      findutils
      patchelf
    ];
    buildInputs = [ ];
    system = builtins.currentSystem;
  };
in derivation (defaultAttrs // attrs) # join the defaultAttrs and the attrs
