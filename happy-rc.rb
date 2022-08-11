# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class HappyRc < Formula
  desc "A command line tool for happy path."
  homepage "https://github.com/chanzuckerberg/happy"
  version "0.28.0-b1d5102"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.28.0-b1d5102/happy_0.28.0-b1d5102_darwin_arm64.tar.gz"
      sha256 "abf44af7cdfe4e0983400a8be893113956de085eb9ab584cf6e566a60ae67e84"

      def install
        bin.install "happy-rc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.28.0-b1d5102/happy_0.28.0-b1d5102_darwin_amd64.tar.gz"
      sha256 "abb8ea55d49db736e19bca77ce03f5c3850c891418165e4b51736c2f0a48e4a8"

      def install
        bin.install "happy-rc"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.28.0-b1d5102/happy_0.28.0-b1d5102_linux_arm64.tar.gz"
      sha256 "3c4babebcc72ecdd62e3a987544bbf85b9de9ef8593faff27907f481b625c21a"

      def install
        bin.install "happy-rc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.28.0-b1d5102/happy_0.28.0-b1d5102_linux_amd64.tar.gz"
      sha256 "b51d630bbbcedc250dd9ae491d6976b7238065019c7e1945e52dce422e3b5f8f"

      def install
        bin.install "happy-rc"
      end
    end
  end

  test do
    system "#{bin}/happy-rc"
  end
end
