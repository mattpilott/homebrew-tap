class KittoZsh < Formula
  desc "Backpack of zsh helpers for Mac JS development"
  homepage "https://github.com/mattpilott/kitto-zsh"
  url "https://github.com/mattpilott/kitto-zsh/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "e5e93c011c665710a3e9397ecddadc883aeedf4f03b4811e1ba49a5df81b6e62"
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
