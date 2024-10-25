{
  lib,
  stdenv,
  fetchFromGitHub,
  meson,
  ninja,
  glib,
  pkg-config,
  cmake,
  gusb,
  cairo,
  pixman,
  nss,
  openssl,
  libgudev,
  gobject-introspection,
  gnome2,
  opencv,
  doctest,
  libfprint-tod,
  libfprint,
}:

stdenv.mkDerivation {
  pname = "libfprint-27c6-5110";
  version = "qwq-0";

  src = fetchFromGitHub {
    owner = "0x00002a";
    repo = "libfprint";
    rev = "0x2a/dev/goodixtls-sigfm";
    hash = "sha256-KqY/1DYq8SELfjHv6GctYL5onmzGSIIEwv2AriSdY1I=";
  };

  # src = fetchFromGitHub {
  #   owner = "goodix-fp-linux-dev";
  #   repo = "libfprint";
  #   rev = "goodixtls";
  #   hash = "sha256-6llzCeVOtv0HRaNdB8mMzZCA8RBZtGkSCErsXwKE/vk=";
  # };

  patchPhase = ''
    # sed -i "4c       value: 'all')" ./meson_options.txt
    sed -i "8c       value: false)" ./meson_options.txt
    sed -i "16c       value: '$out/lib/udev')" ./meson_options.txt
    sed -i "24c       value: '$out/lib/udev')" ./meson_options.txt
    sed -i "32c       value: false)" ./meson_options.txt
    sed -i "36c       value: false)" ./meson_options.txt
    cat ./meson_options.txt
  '';

  nativeBuildInputs = [
    meson
    ninja
    pkg-config
    cmake
    gnome2.gtk-doc
    doctest
  ];
  buildInputs = [
    glib
    gusb
    cairo
    pixman
    nss
    gobject-introspection
    openssl
    libgudev
    opencv
    libfprint-tod
    libfprint
  ];
  mesonBuildType = "release";

  passthru.driverPath = "/lib";

  meta = with lib; {
    homepage = "https://github.com/0x00002a/libfprint/tree/0x2a/feat/sigfm";
    description = "(27c6:5110) Library for fingerprint readers";
    license = licenses.lgpl21Only;
    maintainers = [ ];
    platforms = platforms.linux;
  };
}
