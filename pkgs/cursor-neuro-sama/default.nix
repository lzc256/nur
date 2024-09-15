{ lib
, fetchzip
, stdenv
}:
stdenvNoCC.mkDerivation rec {
  pname = "cursor-neuro-sama";
  version = "0.0";
  src = fetchzip {
    url = "https://raw.githubusercontent.com/lzc256/nur/Neuro-sama.tar.gz";
    hash = "sha256-g0s/6rR7gCKWM678EBSLa37OBR+cFJORjFXkiGFqs6U=";
  };

  installPhase = ''
    mkdir -p $out/share/icons
    cp -r . $out/share/icons/cursor-neuro-sama
  '';

  meta = with lib; {
    description = "neuro sama cursor.";
    homepage = "https://lzc256.com";
    license = licenses.gpl3;
    platforms = platforms.linux;
  };
}
