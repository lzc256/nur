# This file describes your repository contents.
# It should return a set of nix derivations
# and optionally the special attributes `lib`, `modules` and `overlays`.
# It should NOT import <nixpkgs>. Instead, you should take pkgs as an argument.
# Having pkgs default to <nixpkgs> is fine though, and it lets you use short
# commands such as:
#     nix-build -A mypackage

{
  pkgs ? import <nixpkgs> { },
}:

{
  # The `lib`, `modules`, and `overlays` names are special
  lib = import ./lib { inherit pkgs; }; # functions
  modules = import ./modules; # NixOS modules
  overlays = import ./overlays; # nixpkgs overlays

  example-package = pkgs.callPackage ./pkgs/example-package { };
  artalk = pkgs.callPackage ./pkgs/artalk { };
  ags = pkgs.callPackage ./pkgs/ags { };
  muse-sounds-manager = pkgs.callPackage ./pkgs/muse-sounds-manager { };
  cursor-neuro-sama = pkgs.callPackage ./pkgs/cursor-neuro-sama { };
  fonts-apple = pkgs.callPackage ./pkgs/fonts-apple { };
  fonts-apple-emoji = pkgs.callPackage ./pkgs/fonts-apple-emoji { };
  clashtui = pkgs.callPackage ./pkgs/clashtui { };
  libfprint-27c6-5110 = pkgs.callPackage ./pkgs/libfprint-27c6-5110 { };
  mihomo-party = pkgs.callPackage ./pkgs/mihomo-party { };
  kwin-gestures = pkgs.kdePackages.callPackage ./pkgs/kwin-gestures { };
  kwin-effects-geometry-change = pkgs.callPackage ./pkgs/kwin-effects-geometry-change { };
  # some-qt5-package = pkgs.libsForQt5.callPackage ./pkgs/some-qt5-package { };
  # ...
}
