{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    glab
  ];

  homebrew = {
    enable = true;
    onActivation = {
      autoUpdate = true;
      upgrade = true;
      cleanup = "zap";
    };

    casks = [
      "librewolf"
      "jellyfin-media-player"
      "zulip"
      "maccy"
      "dbeaver-community"
    ];

    brews = [
      "postgresql@18"
      "direnv"
    ];
  };

  environment.variables = {
    HOMEBREW_NO_AUTO_UPDATE = "1";
  };
}
