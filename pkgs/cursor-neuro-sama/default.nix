{ lib
, fetchzip
, stdenv
}:
stdenv.mkDerivation rec {
  pname = "cursor-neuro-sama";
  version = "0.0";
  src =  
  sourceRoot = ".";

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
