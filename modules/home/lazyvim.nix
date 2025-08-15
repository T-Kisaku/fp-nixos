{ lib, inputs, ... }:

let
  src = "${inputs."my-dots"}/nvim/.config/nvim";
  dst = "$HOME/.config/nvim";
in {
  home.activation.installNvimConfig =
    lib.hm.dag.entryAfter [ "writeBoundary" ] ''
      set -eu
      mkdir -p "$HOME/.config"
      rm -rf "${dst}"
      cp -a "${src}" "${dst}"

      # Add write permission for your user everywhere; ensure dirs are traversable
      chmod -R u+rw "${dst}"
      find "${dst}" -type d -exec chmod u+rwx {} +
    '';
}
