{ pkgs }:

with pkgs.lib;
{
  # Add your library functions here
  #
  # hexint = x: hexvals.${toLower x};

  lzc256 = {
    overrideDrvAsFree =
      pkg: (pkg.overrideAttrs (finalAttrs: previousAttrs: { meta.license = lib.licenses.free; }));
  };
}
