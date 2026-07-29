class KittoZsh < Formula
  desc "Backpack of zsh helpers for Mac JS development"
  homepage "https://github.com/mattpilott/kitto-zsh"
  url "https://github.com/mattpilott/kitto-zsh/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "e5902bc8e48577e91b31dec59727c780c6884f30e7c3868c18ec5bd8c2c8e2e2"
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
