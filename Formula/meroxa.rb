# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Meroxa < Formula
  desc "The Meroxa CLI"
  homepage "https://meroxa.io"
  version "2.13.0"
  license "Apache 2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/meroxa/cli/releases/download/v2.13.0/meroxa_2.13.0_darwin_arm64.tar.gz"
      sha256 "ef3412f314258ba625da72fec0ab5122782eb15b79d8460f07641eb2424ba990"

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
      url "https://github.com/meroxa/cli/releases/download/v2.13.0/meroxa_2.13.0_darwin_amd64.tar.gz"
      sha256 "9746a46d51c2417bd697a23446ae636156bfdc5e8d7550cc692b4f009c200c92"

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
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/meroxa/cli/releases/download/v2.13.0/meroxa_2.13.0_linux_arm64.tar.gz"
      sha256 "d3d5d67db0dc98260181510842ee17705156e08fa7fe4081913fee870e8abfc0"

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
      url "https://github.com/meroxa/cli/releases/download/v2.13.0/meroxa_2.13.0_linux_amd64.tar.gz"
      sha256 "2dbe881df077f511f86f1950b3746bfffcf341f4ad01c221c0532dbab3f51806"

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
    shell_output("#{bin}/meroxa version").match(/2.13.0/)
  end
end
