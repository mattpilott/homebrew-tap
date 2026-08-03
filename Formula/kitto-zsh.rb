class KittoZsh < Formula
  desc "Backpack of zsh helpers for Mac JS development"
  homepage "https://github.com/mattpilott/kitto-zsh"
  url "https://github.com/mattpilott/kitto-zsh/archive/refs/tags/v0.6.1.tar.gz"
  sha256 "446ccd8a966341dcb7f7dcced6cfa13b6b5d3d730771b9ff8d8911bec4b2c0cb"
  license "MIT"

  def install
    prefix.install "kitto-zsh.plugin.zsh", "functions"
    zsh_completion.install "completions/_kitto-zsh"
  end

  def caveats
    <<~EOS
      Add to ~/.zshrc:
        source #{opt_prefix}/kitto-zsh.plugin.zsh
    EOS
  end

  test do
    system "zsh", "-n", "#{opt_prefix}/kitto-zsh.plugin.zsh"
  end
end
