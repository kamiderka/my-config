{
  pkgs,
  ...
}: {
  home.packages = [pkgs.gh];

  programs.git = {
    enable = true;

    userName = "Kamil Kordecki";
    userEmail = "kamil@kordecki.dev";
  };
}
