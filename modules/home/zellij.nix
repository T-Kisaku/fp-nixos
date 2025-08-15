{ pkgs, inputs, ... }:

{
  programs.zellij = {
    enable = true;
    package = pkgs.zellij;
    enableZshIntegration = true;
  };

  home.file.".config/zellij/config.kdl".source = "${inputs.my-dots}/zellij/.config/zellij/config.kdl";
}
