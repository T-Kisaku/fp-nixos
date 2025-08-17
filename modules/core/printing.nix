{ config, pkgs, ... }:
{
  # Printing stack
  services.printing.enable = true;

  # IPP-over-USB (exposes a USB printer as a local IPP device)
  services.ipp-usb.enable = true;  # enables the ipp-usb daemon

  # (Optional but helps discovery in some desktops)
  services.avahi = {
    enable = true;
    nssmdns4 = true;
    openFirewall = true;
  };
}
