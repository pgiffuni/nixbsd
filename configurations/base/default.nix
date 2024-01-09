{ config, ... }: {
  nixpkgs.hostPlatform = "x86_64-freebsd14";

  users.users.root.initialPassword = "toor";

  documentation.man.enable = true;

  users.users.bestie = {
    isNormalUser = true;
    description = "your bestie";
    extraGroups = [ "wheel" ];
    inherit (config.users.users.root) initialPassword;
  };
}
