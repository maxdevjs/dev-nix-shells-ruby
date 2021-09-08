{ pkgs ? import <nixpkgs> {} }:

with pkgs;

let
  unstable = import <nixos-unstable> { config = { allowUnfree = true; }; };
  inherit (lib) optional optionals;
  # https://nixos.wiki/wiki/Packaging/Ruby
  # https://nixos.wiki/wiki/Development_environment_with_nix-shell
  # https://jamesmead.org/blog/2020-07-26-a-simple-ruby-development-environment-using-nix-shell
  # https://github.com/NixOS/nixpkgs/blob/master/doc/languages-frameworks/ruby.section.md
  ruby = unstable.ruby_3_0;
  solargraph = unstable.rubyPackages.solargraph;
in

mkShell {
  buildInputs = [ ruby solargraph ];
    # ++ optional stdenv.isLinux inotify-tools

    shellHook = ''
      # this allows gems to work in the local directory
      mkdir -p .gems

      # https://github.com/neovim/nvim-lspconfig/issues/387#issuecomment-756660757
      # "For solargraph to launch, you have to trigger the root pattern,
      # which means your file has to be in a directory or subdirectory
      # of a file containing either .git or Gemfile"
      touch Gemfile

      # https://www.thoughtco.com/using-environment-variables-2908194
      # https://www.rubyguides.com/2019/01/ruby-environment-variables/
      # https://www.rubyguides.com/2018/09/ruby-gems-gemfiles-bundler/
      # Packaging a Gem as a Nix derivation https://www.youtube.com/watch?v=61RCi_5IgEY
      # https://manveru.dev/blog/Ruby%20-%20Nix.html
      export GEM_HOME=$PWD/.gems
      export GEM_PATH=$GEM_HOME
      #export RUBYOPT=$PWD
      #export RUBYPATH=$PWD
      #export RUBYLIB=$PWD
      export PATH=$GEM_HOME/bin:$PATH
      
      export LANG=en_US.UTF-8
    '';
}
