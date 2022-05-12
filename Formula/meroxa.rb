# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Meroxa < Formula
  desc "The Meroxa CLI"
  homepage "https://meroxa.io"
  version "2.1.0-nightly.20220512"
  license "Apache 2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/meroxa/cli/releases/download/v2.1.0-nightly.20220512/meroxa_2.1.0-nightly.20220512_darwin_amd64.tar.gz"
      sha256 "1e79cdac52c5b03be2d32478a8bc61f28811b101f3331bf0b8ad37d3ee0febee"

      def install
        bin.install "meroxa"
        prefix.install_metafiles
        bash_completion.install "etc/completion/meroxa.completion.sh"
        zsh_completion.install "etc/completion/meroxa.completion.zsh" => "meroxa"
        fish_completion.install "etc/completion/meroxa.completion.fish"
        man.install "etc/man/man1"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/meroxa/cli/releases/download/v2.1.0-nightly.20220512/meroxa_2.1.0-nightly.20220512_darwin_arm64.tar.gz"
      sha256 "14805f64ac20aa1c6e53121d577f3fd718312b09e92e3bbc1f97c8898b54d2be"

      def install
        bin.install "meroxa"
        prefix.install_metafiles
        bash_completion.install "etc/completion/meroxa.completion.sh"
        zsh_completion.install "etc/completion/meroxa.completion.zsh" => "meroxa"
        fish_completion.install "etc/completion/meroxa.completion.fish"
        man.install "etc/man/man1"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/meroxa/cli/releases/download/v2.1.0-nightly.20220512/meroxa_2.1.0-nightly.20220512_linux_amd64.tar.gz"
      sha256 "9a1b26b4ab9177ef9111881eaade2be1f8603c2b366243457b3f5bf06b1440bc"

      def install
        bin.install "meroxa"
        prefix.install_metafiles
        bash_completion.install "etc/completion/meroxa.completion.sh"
        zsh_completion.install "etc/completion/meroxa.completion.zsh" => "meroxa"
        fish_completion.install "etc/completion/meroxa.completion.fish"
        man.install "etc/man/man1"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/meroxa/cli/releases/download/v2.1.0-nightly.20220512/meroxa_2.1.0-nightly.20220512_linux_arm64.tar.gz"
      sha256 "331dbafbdc5cc2cf0abfaaa0300550a4269ebae5d4e17856cecfba36b0cff73d"

      def install
        bin.install "meroxa"
        prefix.install_metafiles
        bash_completion.install "etc/completion/meroxa.completion.sh"
        zsh_completion.install "etc/completion/meroxa.completion.zsh" => "meroxa"
        fish_completion.install "etc/completion/meroxa.completion.fish"
        man.install "etc/man/man1"
      end
    end
  end

  head "https://github.com/meroxa/cli.git"

  test do
    shell_output("#{bin}/meroxa version").match(/2.1.0-nightly.20220512/)
  end
end
