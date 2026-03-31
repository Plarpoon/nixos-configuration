_:

{
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
    ];
  };

  environment.variables = {
    HOMEBREW_NO_AUTO_UPDATE = "1";
  };
}
