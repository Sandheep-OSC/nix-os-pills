pkgs: attrs:
let
  defaultAttrs = {
    builder = "${pkgs.bash}/bin/bash";
    args = [ ./builder.sh ];
    baseInputs = with pkgs; [
      gnutar
      gzip
      gnumake
      gcc
      coreutils
      gawk
      gnused
    ];
    buildInputs = with pkgs; [
      gnugrep
      binutils.bintools
    ];
    system = builtins.currentSystem;
  };
in
derivation (defaultAttrs // attrs)

