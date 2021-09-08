# nix-shell for Ruby

> WIP

## What is it?

A [nix-shell](https://nixos.org/manual/nix/stable/#description-13) template to setup a [Ruby](https://www.ruby-lang.org/en/) development environment with [direnv](https://github.com/direnv/direnv) integration (if installed).

Built gathering inspiration from several [sources](#resources), it makes available:

- `unstable.`[ruby_3_0](https://www.ruby-lang.org/en/)
- `unstable.`[rubyPackages.solargraph](https://github.com/neovim/nvim-lspconfig/blob/master/CONFIG.md#solargraph) ([LSP](https://microsoft.github.io/language-server-protocol/))
- environment opinions:
  - several environment variables are set
  - `Gemfile` is created (for [solargraph](https://github.com/neovim/nvim-lspconfig/blob/master/CONFIG.md#solargraph) to launch)
  - `gems` are installed locally (in project folder)
  - ...

## Resources

### Direnv

- [direnv wiki page about Nix](https://github.com/direnv/direnv/wiki/Nix)
- [Automating development environment set-up with Direnv](http://www.futurile.net/2016/02/03/automating-environment-setup-with-direnv/)
- [More prac­ti­cal direnv](https://rnorth.org/more-practical-direnv/)
  - [rnorth/.direnvrc](https://gist.github.com/rnorth/0fd5048da85957da39c17bd49c4ca922)

### Gems

- [How to create a Ruby Gem: The basics](https://lokalise.com/blog/create-a-ruby-gem-basics/)
- [How to create a Ruby gem: Testing suite](https://lokalise.com/blog/how-to-create-a-ruby-gem-testing-suite/)
- [How to create a Ruby Gem: Publishing](https://lokalise.com/blog/how-to-create-a-ruby-gem-publishing/)

### Miscellaneous

- [About using Nix in my development workflow - Jean-Philippe Cugnet - Medium](https://medium.com/@ejpcmac/about-using-nix-in-my-development-workflow-12422a1f2f4c)
- [15.24. Ruby](https://nixos.org/manual/nixpkgs/stable/#sec-language-ruby)
- [How To Use Environment Variables in Ruby](https://www.rubyguides.com/2019/01/ruby-environment-variables/)
- [Packaging/Ruby](https://nixos.wiki/wiki/Packaging/Ruby)
- [Ruby Gems, Gemfile & Bundler (The Ultimate Guide)](https://www.rubyguides.com/2018/09/ruby-gems-gemfiles-bundler/)
- [Using Ruby Environmental Variables](https://www.thoughtco.com/using-environment-variables-2908194)

### Nix

- [A simple Ruby development environment using nix-shell](https://jamesmead.org/blog/2020-07-26-a-simple-ruby-development-environment-using-nix-shell)
- [Development environment with nix-shell](https://nixos.wiki/wiki/Development_environment_with_nix-shell)
- [Packaging a Gem as a Nix derivation](https://www.youtube.com/watch?v=61RCi_5IgEY)
- [Ruby {#sec-language-ruby}](https://github.com/NixOS/nixpkgs/blob/master/doc/languages-frameworks/ruby.section.md)
- [Ruby & Nix](https://manveru.dev/blog/Ruby%20-%20Nix.html)
- [Using Nix in Elixir projects](https://ejpcmac.net/blog/using-nix-in-elixir-projects/)

## TODO

- [lorri](https://github.com/nix-community/lorri) integration
- [niv](https://github.com/joefiorini/niv)
- ...
