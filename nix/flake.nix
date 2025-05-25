{
  description = "My personal nix-darwin system flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    nix-darwin.url = "github:nix-darwin/nix-darwin/master";
    nix-darwin.inputs.nixpkgs.follows = "nixpkgs";
    nix-homebrew.url = "github:zhaofengli/nix-homebrew";
    homebrew-core = {
      url = "github:homebrew/homebrew-core";
      flake = false;
    };
    homebrew-cask = {
      url = "github:homebrew/homebrew-cask";
      flake = false;
    };
  };

  outputs = inputs@{ self, nix-darwin, nixpkgs, nix-homebrew, homebrew-core, homebrew-cask}:
  let
    configuration = { pkgs, config, ... }: {
      nixpkgs.config.allowUnfree = true;
      # List packages installed in system profile. To search by name, run:
      # $ nix-env -qaP | grep wget
      environment.systemPackages =
        [ 
          pkgs.mkalias
          pkgs.neovim
          pkgs.vim
          pkgs.tmux
          pkgs.obsidian
        ];
      system.primaryUser = "nimishgj";
      homebrew = {
        enable = true;
        brews = [
          "asdf"
          "htop"
          "thefuck"
          "fzf"
          "openssl@3"
          "bat"
          "diff-so-fancy"
          "libyaml"
          "python@3.13"
          "dooit"
          "gmp"
          "fzf"
          "gh"
          "gnu-typist"
          "go"
          "grpcurl"
          "gtk+3"
          "gstreamer"
          "helm"
          "jq"
          "kompose"
          "kubectx"
          "lazygit"
          "libpq"
          "node"
          "markdownlint-cli"
          "maven"
          "minikube"
          "nmap"
          "nvm"
          "otel-cli"
          "postgresql@14"
          "pre-commit"
          "protobuf"
          "python-setuptools"
          "rbenv"
          "ripgrep"
          "rust"
          "stow"
          "supervisor"
          "tailscale"
          "telnet"
          "terraform"
          "tree"
          "watch"
          "watchman"
          "wget"
          "yazi"
          "yq"
          "zsh"
          "derailed/k9s/k9s"
          "weaveworks/tap/eksctl"
        ];
        casks = [
          "font-jetbrains-mono-nerd-font"
          "ghostty"
          "ngrok"
          "qutebrowser"
          "zulu@17"
        ];
        taps = [
          "derailed/k9s"
          "koekeishiya/formulae"
          "weaveworks/tap"
        ];
      };
      # Necessary for using flakes on this system.
      nix.settings.experimental-features = "nix-command flakes";
      nix.enable = true;
      # Enable alternative shell support in nix-darwin.
      # programs.fish.enable = true;
      programs.zsh.enable = true;
      # Set Git commit hash for darwin-version.
      system.configurationRevision = self.rev or self.dirtyRev or null;
      # Used for backwards compatibility, please read the changelog before changing.
      # $ darwin-rebuild changelog
      system.stateVersion = 6;

      # The platform the configuration will be used on.
      nixpkgs.hostPlatform = "aarch64-darwin";
    };
  in
  {
    # Build darwin flake using:
    # $ darwin-rebuild build --flake .#simple
    darwinConfigurations."simple" = nix-darwin.lib.darwinSystem {
      modules = [
        configuration
        nix-homebrew.darwinModules.nix-homebrew
        {
          nix-homebrew = {
            enable = true;
            enableRosetta = true;
            user = "nimishgj";
            autoMigrate = true;
            taps = {
              "homebrew/homebrew-core" = homebrew-core;
              "homebrew/homebrew-cask" = homebrew-cask;
           };
          };
        } 
      ];
    };

    # Expose the package set, including overlays, for convenience.
    darwinPackages = self.darwinConfigurations."simple".pkgs;
  };
}
