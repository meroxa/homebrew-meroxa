# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Meroxa < Formula
  desc "The Meroxa CLI"
  homepage "https://meroxa.io"
  version "2.9.1"
  license "Apache 2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/meroxa/cli/releases/download/v2.9.1/meroxa_2.9.1_darwin_arm64.tar.gz"
      sha256 "8d34f952c2ef8f7f22a2dee35341aa91a8862ec582e7925de91c97c41cc7de5a"

      def install
        bin.install "meroxa"
        prefix.install_metafiles
        bash_completion.install "etc/completion/meroxa.completion.sh"
        zsh_completion.install "etc/completion/meroxa.completion.zsh" => "meroxa"
        fish_completion.install "etc/completion/meroxa.completion.fish"
        man.install "etc/man/man1"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/meroxa/cli/releases/download/v2.9.1/meroxa_2.9.1_darwin_amd64.tar.gz"
      sha256 "3f6cc9f366969e4f0baf78d680bf31819f622be726b60c515d7f64416763346b"

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
      url "https://github.com/meroxa/cli/releases/download/v2.9.1/meroxa_2.9.1_linux_amd64.tar.gz"
      sha256 "c9447879659727bdeb0229216f8f029ec9ac087665cd74a855836ed773a4d345"

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
      url "https://github.com/meroxa/cli/releases/download/v2.9.1/meroxa_2.9.1_linux_arm64.tar.gz"
      sha256 "26f2867867ae596f5f31bb1aa724e9ec7a83cdefd3741b79c16f0ee164c3ae4d"

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
    shell_output("#{bin}/meroxa version").match(/2.9.1/)
  end
end
