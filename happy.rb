# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Happy < Formula
  desc "A command line tool for happy path."
  homepage "https://github.com/chanzuckerberg/happy"
  version "0.16.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.16.0/happy_0.16.0_darwin_amd64.tar.gz"
      sha256 "4181a456669ceb114e4b0f21926057d6f4fc9a2e8ebba4fcc460ead2147220c0"

      def install
        bin.install "happy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.16.0/happy_0.16.0_darwin_arm64.tar.gz"
      sha256 "2a9e4485b71a8269e13a4cc9c0e10ad1bc63dbbd7d1edea91101e59f02045a28"

      def install
        bin.install "happy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.16.0/happy_0.16.0_linux_arm64.tar.gz"
      sha256 "2fb08304524fd07ccd861cf47f486eb91fd808a5dcfd9e53c05c50c0799244d0"

      def install
        bin.install "happy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.16.0/happy_0.16.0_linux_amd64.tar.gz"
      sha256 "671bc6e9189c63eab89f722f288b9931de139775ffb2e939a8b66e1431502f6a"

      def install
        bin.install "happy"
      end
    end
  end

  test do
    system "#{bin}/happy"
  end
end
