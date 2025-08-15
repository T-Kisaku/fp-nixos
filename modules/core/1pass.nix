{ config, pkgs, ... }:
{
  # 1Password GUI app
  programs._1password-gui = {
    enable = true;
    # Users allowed to approve polkit prompts (unlock, browser integration)
    polkitPolicyOwners = [ "your-username" ];
  };

  # (Optional) 1Password CLI (op)
  programs._1password.enable = true;

  # If you plan to use 1Password SSH agent,
  # don’t also start the stock ssh-agent:
  # programs.ssh.startAgent = false;
}

