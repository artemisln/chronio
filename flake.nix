{
  description = "Chronio - Ruby on Rails social media platform";
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.11";
    nixpkgs-unstable.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs =
    {
      self,
      nixpkgs,
      nixpkgs-unstable,
      flake-utils,
    }:
    flake-utils.lib.eachDefaultSystem (
      system:
      let
        pkgs = import nixpkgs {
          inherit system;
        };
        unstablePkgs = import nixpkgs-unstable {
          inherit system;
        };
      in
      {
        devShells.default = pkgs.mkShell {
          packages = with pkgs; [
            # Core tooling
            curl
            jq
            gnumake
            pre-commit
            git
            vim
            nano

            # Ruby build dependencies
            sqlite # for bundler inline gems

            # Ruby
            ruby_3_3
            bundler

            # Node.js & Yarn (for Tailwind CSS / frontend assets)
            nodejs_22
            unstablePkgs.yarn

            # PostgreSQL
            postgresql_16
            postgresql_16.lib

            # Image processing for Active Storage
            imagemagick
            vips

            # Build dependencies for native gems
            libyaml
            openssl_3
            zlib
            readline

            # Docker / Compose (for README workflow)
            docker
            docker-compose
          ];

          shellHook = ''
            # Unset GEM_HOME to use Nix Ruby instead of system Ruby gems
            unset GEM_HOME
            unset GEM_PATH

            export PGHOST=/tmp
          '';
        };
      }
    );
}