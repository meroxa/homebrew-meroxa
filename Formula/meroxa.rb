# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Meroxa < Formula
  desc "The Meroxa CLI"
  homepage "https://meroxa.io"
  version "0.9.1"
  license "Apache 2.0"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/meroxa/cli/releases/download/v0.9.1/meroxa_0.9.1_darwin_amd64.tar.gz"
      sha256 "46e43c36da820369ed26af38bafed571f5f272de4caf954a86dd66b9f2c831bc"
    end
    if Hardware::CPU.arm?
      url "https://github.com/meroxa/cli/releases/download/v0.9.1/meroxa_0.9.1_darwin_arm64.tar.gz"
      sha256 "8a5193669692de8d00086361d93b7382b847831f85e0a0607a2f9bee2ea53913"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/meroxa/cli/releases/download/v0.9.1/meroxa_0.9.1_linux_amd64.tar.gz"
      sha256 "6b28a4a560c453fecda477d6055f9fa8fec65cad918bed6be219af576290e891"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/meroxa/cli/releases/download/v0.9.1/meroxa_0.9.1_linux_arm64.tar.gz"
      sha256 "077354b964c1ce6eabaef836a88b1be91f673c2494c1045dd18788d4646464d0"
    end
  end

  head "https://github.com/meroxa/cli.git"

  def install
    bin.install "meroxa"
    prefix.install_metafiles
    bash_completion.install "etc/completion/meroxa.completion.sh"
    zsh_completion.install "etc/completion/meroxa.completion.zsh" => "meroxa"
    fish_completion.install "etc/completion/meroxa.completion.fish"
    man.install "etc/man/man1"
  end

  test do
    shell_output("#{bin}/meroxa version").match(/0.9.1/)
  end
end
