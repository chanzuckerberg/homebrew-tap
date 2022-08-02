# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class HappyRc < Formula
  desc "A command line tool for happy path."
  homepage "https://github.com/chanzuckerberg/happy"
  version "0.27.1-a483399"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.27.1-a483399/happy_0.27.1-a483399_darwin_arm64.tar.gz"
      sha256 "ea3b3a641f328066e1139b0a1d0b7c0c3dfa3a67b6cc397dfc70ed20c4d53b59"

      def install
        bin.install "happy-rc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.27.1-a483399/happy_0.27.1-a483399_darwin_amd64.tar.gz"
      sha256 "b014bbf4ef0d247b270d1717e8b64ddb28a9fcdc35d940601b1794fa79c0c322"

      def install
        bin.install "happy-rc"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.27.1-a483399/happy_0.27.1-a483399_linux_arm64.tar.gz"
      sha256 "f93b52d7ab1138021bbd52d138002f5d86cc0583f8e5523b3609e86b1acb6646"

      def install
        bin.install "happy-rc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.27.1-a483399/happy_0.27.1-a483399_linux_amd64.tar.gz"
      sha256 "9463b1a6adc4b199fbf94316b6e2b3ce798bb3dc0c4f39976d248750c01a4b7b"

      def install
        bin.install "happy-rc"
      end
    end
  end

  test do
    system "#{bin}/happy-rc"
  end
end
