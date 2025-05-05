{ config, lib, ... }: {
  imports = [
    # Choose your theme here:
    ../../themes/nixy.nix
  ];

  config.var = {
    hostname = "tuhoiisapc";
    username = "tuhoiisa";
    configDirectory = "/home/" + config.var.username
      + "/.config/nixos-config"; # The path of the nixos configuration directory

    keyboardLayout = "us";

    location = "Istanbul";
    timeZone = "Europe/Istanbul";
    defaultLocale = "en_US.UTF-8";
    extraLocale = "tr_TR.UTF-8";

    git = {
      username = "tuhoiisa";
      email = "tuhoiisa@gmail.com";
    };

    autoUpgrade = false;
    autoGarbageCollector = true;
  };

  # Let this here
  options = {
    var = lib.mkOption {
      type = lib.types.attrs;
      default = { };
    };
  };
}
