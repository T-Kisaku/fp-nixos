{ my-dots, ... }:
{
  home.file = {
    ".config/nvim" = {
      source = "${my-dots}/nvim/.config/nvim";
      recursive = true;
    };
  };
}

