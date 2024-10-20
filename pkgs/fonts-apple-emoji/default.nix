{
  lib,
  stdenvNoCC,
  fetchurl,
}:

stdenvNoCC.mkDerivation rec {
  pname = "fonts-apple-emoji";
  version = "0";

  src = fetchurl {
    url = "https://github.com/samuelngs/apple-emoji-linux/releases/download/v17.4/AppleColorEmoji.ttf";
    sha256 = "sha256-SG3JQLybhY/fMX+XqmB/BKhQSBB0N1VRqa+H6laVUPE=";
  };

  sourceRoot = ".";

  dontUnpack = true;

  installPhase = ''
    mkdir -p $out/usr/share/fonts/TTF
    ln -s ${src} $out/usr/share/fonts/TTF
  '';

  meta = {
    description = "Apple Emoji";
    homepage = "https://github.com/samuelngs/apple-emoji-linux";
    license = lib.licenses.unfree;
  };
}
