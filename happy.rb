# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Happy < Formula
  desc "A command line tool for happy path."
  homepage "https://github.com/chanzuckerberg/happy"
  version "0.91.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.91.0/happy_0.91.0_darwin_arm64.tar.gz"
      sha256 "fd66e8202a14f3fbfc3fff01dfba98abaf9962b1dc812a94b0b11adbbd7b7dd0"

      def install
        bin.install "happy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.91.0/happy_0.91.0_darwin_amd64.tar.gz"
      sha256 "575f227c9acdc5be9efd48421c5f037b8ab543e09dc614df90ebfe1a1c24455c"

      def install
        bin.install "happy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.91.0/happy_0.91.0_linux_arm64.tar.gz"
      sha256 "7089efd9ab5f8d5b3eaa0c3985ed2dc5015afeda09d34ca599b282ddcc21b9f8"

      def install
        bin.install "happy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.91.0/happy_0.91.0_linux_amd64.tar.gz"
      sha256 "71a530d720ed9f09f96ff062bf4434ac174ea20ba2ebc9c6056c9a9308686486"

      def install
        bin.install "happy"
      end
    end
  end

  test do
    system "#{bin}/happy"
  end
end
