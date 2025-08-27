{ pkgs, ... }:

{
  home.packages = with pkgs; [
    dbeaver-bin
    mariadb-client
  ];
}

