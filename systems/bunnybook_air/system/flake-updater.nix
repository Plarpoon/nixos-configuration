{ pkgs, username, ... }:

{
  launchd.daemons.flake-updater = {
    serviceConfig = {
      ProgramArguments = [
        "/bin/sh"
        "-c"
        "truncate -s 0 /var/log/flake-updater.log && sudo -u ${username} ${pkgs.nix}/bin/nix flake update --flake /Users/${username}/nix-configuration"
      ];
      StartInterval = 1800; # 30 minutes
      RunAtLoad = false;
      StandardOutPath = "/var/log/flake-updater.log";
      StandardErrorPath = "/var/log/flake-updater.log";
    };
  };
}
