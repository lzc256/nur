{ lib
, fetchzip
, stdenv
}:

let
  src = url: hash: fetchzip ({
    url = "https://github.com/ful1e5/apple_cursor/releases/download/v${version}/${variant}.${suffix}";
    hash = hash;
  } // (lib.optionalAttrs (suffix == "zip") { stripRoot = false; }));

  version = "0";
in stdenv.mkDerivation rec {
  pname = "cursor-neuro-sama";
  version = "0.0";
  src = fetchFromGitHub 

  sourceRoot = ".";

  installPhase = ''
    install -dm 0755 $out/share/icons
    cp -r macOS* $out/share/icons/
  '';

  meta = with lib; {
    description = "neuro sama cursor.";
    homepage = "https://lzc256.com";
    license = licenses.gpl3;
    platforms = platforms.linux;
  };
}
