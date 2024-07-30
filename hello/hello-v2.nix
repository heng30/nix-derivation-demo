let pkgs = import <nixpkgs> { };
in derivation {
  name = "hello-v2";
  builder = "${pkgs.bash}/bin/bash";
  args = [ ../builder.sh ];
  setup = ../setup.sh;
  buildInputs = with pkgs; [
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
  src = ./hello-2.12.1.tar.gz;
  system = builtins.currentSystem;
}
