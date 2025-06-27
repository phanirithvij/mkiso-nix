# TODO move to nixpkgs
{
  lib,
  python3,
  fetchFromGitHub,
}:

python3.pkgs.buildPythonApplication rec {
  pname = "pycdlib";
  version = "1.15.0";
  format = "setuptools";

  src = fetchFromGitHub {
    owner = "clalancette";
    repo = "pycdlib";
    tag = "v${version}";
    hash = "sha256-BD33nA60x6YvwkYGXPA0E6s8N/XhWaY/+tTRbFN9ai4=";
  };

  pythonImportsCheck = [ "pycdlib" ];

  meta = {
    description = "Python library to read and write ISOs";
    homepage = "https://github.com/clalancette/pycdlib";
    changelog = "https://github.com/clalancette/pycdlib/blob/${src.tag}/CHANGELOG";
    license = lib.licenses.lgpl21Only;
    # TODO determine platforms
    maintainers = with lib.maintainers; [ phanirithvij ];
  };
}
