# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class CzidCli < Formula
  desc "A CLI for uploading samples to Chan Zuckerberg ID"
  homepage "https://github.com/chanzuckerberg/czid-cli"
  version "5.0.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chanzuckerberg/czid-cli/releases/download/v5.0.6/czid-cli_darwin_arm64.tar.gz"
      sha256 "c9691df46be269e7e52ab222a4a4ffaa4561db5a3573116612414f171c3b39b4"

      def install
        bin.install "czid"
        bash_completion.install "bash_completion" => "czid"
        zsh_completion.install "zsh_completion" => "_czid"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/czid-cli/releases/download/v5.0.6/czid-cli_darwin_amd64.tar.gz"
      sha256 "453dcfda3da3c83054be6db2c0322facd07cd42f66893f2ab31ab1703deb6b9f"

      def install
        bin.install "czid"
        bash_completion.install "bash_completion" => "czid"
        zsh_completion.install "zsh_completion" => "_czid"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/czid-cli/releases/download/v5.0.6/czid-cli_linux_amd64.tar.gz"
      sha256 "dfd6392d724765d2f5ce7a7c246bd41f26df8ad8e724a50981c93f7beb61d0a9"

      def install
        bin.install "czid"
        bash_completion.install "bash_completion" => "czid"
        zsh_completion.install "zsh_completion" => "_czid"
      end
    end
  end

  test do
    system "#{bin}/czid --version"
  end
end
