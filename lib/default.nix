{ pkgs }:

with pkgs.lib;
{
  # Add your library functions here
  #
  # hexint = x: hexvals.${toLower x};

  overrideDrvAsFree =
    pkg: (pkg.overrideAttrs (finalAttrs: previousAttrs: { meta.license = pkgs.lib.licenses.free; }));
}
