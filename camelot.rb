# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Camelot < Formula
  desc "Publish the release."
  homepage "https://github.com/chanzuckerberg/camelot"
  version "0.5.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chanzuckerberg/camelot/releases/download/v0.5.0/camelot_0.5.0_darwin_arm64.tar.gz"
      sha256 "a3ee171d7a61734a0e28eaec639414dab0dbd303aa4034df5c9f545761a6dcc2"

      def install
        bin.install "camelot"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/camelot/releases/download/v0.5.0/camelot_0.5.0_darwin_amd64.tar.gz"
      sha256 "700f591e18c92b15a3ddecbd67e9078acee003a7508c7711372a06002a733fd4"

      def install
        bin.install "camelot"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chanzuckerberg/camelot/releases/download/v0.5.0/camelot_0.5.0_linux_arm64.tar.gz"
      sha256 "0fa068c8321523513522ba308e3eeceb679495f13644c48ba3f02ffbb86e97b2"

      def install
        bin.install "camelot"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/camelot/releases/download/v0.5.0/camelot_0.5.0_linux_amd64.tar.gz"
      sha256 "41d2af46697ed993851f8aee8ffe31342ec0c7fb998aa3f94f78a5bed696e93d"

      def install
        bin.install "camelot"
      end
    end
  end

  test do
    system "#{bin}/camelot version"
  end
end
