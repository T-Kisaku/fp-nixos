{ pkgs, host, ... }:
{
  networking = {
    hostName = host;
    networkmanager = {
      enable = true;
      packages = [ pkgs.networkmanager-l2tp ];
    };
    nameservers = [ "8.8.8.8" "8.8.4.4" "1.1.1.1" ];
    firewall = {
      enable = true;
      allowedTCPPorts = [ 22 80 443 59010 59011 ];
      allowedUDPPorts = [ 59010 59011 ];
      # 500/4500 は外向きでステートフルなので通常開放不要（サーバ側が開いていればOK）
    };
  };

  # バックエンド
  services.strongswan.enable = true;   # IPsec (charon)
  services.pppd.enable       = true;   # PPP ラッパ

  # シークレット入力用（プロンプトが出ない問題を防ぐ）
  programs.nm-applet.enable  = true;

  # 競合防止
  services.xl2tpd.enable     = false;

  environment.systemPackages = with pkgs; [
    networkmanagerapplet
    strongswan   # （servicesで有効化していれば入れなくても良いが入っていても害なし）
    xl2tpd
    ppp
  ];
  environment.etc."strongswan.conf".text = ''
    # intentionally empty
  '';
}

