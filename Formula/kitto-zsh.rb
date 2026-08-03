class KittoZsh < Formula
  desc "Backpack of zsh helpers for Mac JS development"
  homepage "https://github.com/mattpilott/kitto-zsh"
  url "https://github.com/mattpilott/kitto-zsh/archive/refs/tags/v0.6.0.tar.gz"
  sha256 "5abf16e8a7a9ff4d8200e84477a038d97dbe82fa20d2e657d61eb4e11e356c73"
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
