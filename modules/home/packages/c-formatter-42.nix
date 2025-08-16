{ config, lib, pkgs, ... }:

let
  python = pkgs.python3;
in {
  home.sessionPath = [ "$HOME/.local/bin" ];
  home.packages = with pkgs; [
    python3
    python312Packages.pip
    python312Packages.virtualenv
  ];

  home.activation.installCFormatter42 = lib.hm.dag.entryAfter [ "writeBoundary" ] ''
    set -e
    mkdir -p "$HOME/.venvs" "$HOME/.local/bin"

    if [ ! -d "$HOME/.venvs/cformatter42" ]; then
      "${python}/bin/python3" -m venv "$HOME/.venvs/cformatter42"
    fi

    "$HOME/.venvs/cformatter42/bin/python" -m pip install --upgrade pip
    "$HOME/.venvs/cformatter42/bin/pip" install --upgrade "c-formatter-42"

    ln -sf "$HOME/.venvs/cformatter42/bin/c_formatter_42" "$HOME/.local/bin/c_formatter_42"
  '';
}
