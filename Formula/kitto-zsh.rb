class KittoZsh < Formula
  desc "Backpack of zsh helpers for Mac JS development"
  homepage "https://github.com/mattpilott/kitto-zsh"
  url "https://github.com/mattpilott/kitto-zsh/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "0212a499b0a917b9fe411c6ccab92dedd36c092f2eaea446ad204779c0c6a543"
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
