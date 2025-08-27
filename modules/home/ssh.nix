{ ... }:
{
  programs.ssh = {
    enable = true;

    addKeysToAgent = "1h";

    controlMaster = "auto";
    controlPath = "~/.ssh/control-%r@%h:%p";
    controlPersist = "10m";

    matchBlocks = {
      github = {
        host = "github.com";
        hostname = "ssh.github.com";
        user = "git";
        port = 443;
        identityFile = "~/.ssh/id_github";
        identitiesOnly = true;
      };
      gitlab-io = {
        host = "gitlab.invest-online.co.jp";
        hostname = "gitlab.invest-online.co.jp";
        user = "git";
        port = 22;
        identityFile = "~/.ssh/id_gitlab-io";
        identitiesOnly = true;
      };
      vogsphere = {
        host = "vogsphere-v2.42tokyo.jp";
        hostname = "vogsphere-v2.42tokyo.jp";
        user = "git";
        port = 22;
        identityFile = "~/.ssh/id_vogsphere";
        identitiesOnly = true;
      };
    };
  };

  services.ssh-agent.enable = true;
}
