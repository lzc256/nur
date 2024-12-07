{
  lib,
  fetchFromGitHub,
  stdenv,
  cmake,
  extra-cmake-modules,
  kwin,
  wrapQtAppsHook,
  qttools,
  kglobalacceld,
}:

stdenv.mkDerivation {
  pname = "kwin-gestures";
  version = "0.2.0";

  src = fetchFromGitHub {
    owner = "taj-ny";
    repo = "kwin-gestures";
    rev = "2d1655190b2fc8e9c9efe4c14dbff85779270273";
    hash = "sha256-juXMOv4Dgbpoo1RggYow7P5xCnhGMk3912vrE3r2Q2Y=";
  };

  nativeBuildInputs = [
    cmake
    extra-cmake-modules
    wrapQtAppsHook
  ];

  buildInputs = [
    kwin
    qttools
    kglobalacceld
  ];

  meta = with lib; {
    description = "Custom touchpad and touchscreen shortcuts";
    license = licenses.gpl3;
    homepage = "https://github.com/taj-ny/kwin-custom-shortcuts";
  };
}
