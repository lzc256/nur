{ lib, fetchFromGitHub, rustPlatform }:

rustPlatform.buildRustPackage rec {
  pname = "clashtui";
  version = "0.2.1";

  src = fetchFromGitHub {
    owner = "JohanChane";
    repo = pname;
    rev = "v${version}";
    hash = "sha256-BW4aCAHdpA08+lDqghz6Pu6d59r7Lw6F9q8PfrlXtiU=";
  };

  sourceRoot = "./source/clashtui";

  cargoHash = "sha256-gH+2MhWrgme7uL2v8qu/BASKdrTT5VirK7USP6bizVs=";

  doCheck = false;

  meta = {
    description = "Mihomo (Clash.Meta) TUI Client";
    homepage = "https://github.com/JohanChane/clashtui";
    license = lib.licenses.mit;
    maintainers = [ ];
  };
}

