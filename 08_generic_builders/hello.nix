#let
#  pkgs = import <nixpkgs> { };
#in
#derivation {
#  name = "hello";
#  builder = "${pkgs.bash}/bin/bash";
#  args = [ ./hello_builder.sh ];
#  inherit (pkgs)
#    gnutar
#    gzip
#    gnumake
#    gcc
#    coreutils
#    gawk
#    gnused
#    gnugrep
#    ;
#  bintools = pkgs.binutils.bintools;
#  src = ./hello-2.12.1.tar.gz;
#  system = builtins.currentSystem;
#}
#

#let
#  pkgs = import <nixpkgs> { };
#in
#derivation {
#  name = "hello";
#  builder = "${pkgs.bash}/bin/bash";
#  args = [ ./builder.sh ];
#  buildInputs = with pkgs; [
#    gnutar
#    gzip
#    gnumake
#    gcc
#    coreutils
#    gawk
#    gnused
#    gnugrep
#    binutils.bintools
#  ];
#  src = ./hello-2.12.1.tar.gz;
#  system = builtins.currentSystem;
#}
#

let
  pkgs = import <nixpkgs> { };
  mkDerivation = import ./autotools.nix pkgs;
in
mkDerivation {
  name = "hello111";
  src = ./hello-2.12.1.tar.gz;
}

