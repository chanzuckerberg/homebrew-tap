# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class HappyRc < Formula
  desc "A command line tool for happy path."
  homepage "https://github.com/chanzuckerberg/happy"
  version "0.28.0-9fc1902"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.28.0-9fc1902/happy_0.28.0-9fc1902_darwin_arm64.tar.gz"
      sha256 "67e328e632cf44ecf7fefa426e80ea3bff328010db4c4bf42f0bf2b4b4ca4521"

      def install
        bin.install "happy-rc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.28.0-9fc1902/happy_0.28.0-9fc1902_darwin_amd64.tar.gz"
      sha256 "673016a09e16aeb4c17cc69051cec61394e6e3411dfe8f4bd7b1573623c0d236"

      def install
        bin.install "happy-rc"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.28.0-9fc1902/happy_0.28.0-9fc1902_linux_arm64.tar.gz"
      sha256 "d07851a18e0bc316ad7ef8d066adce37a94fbf5b69bda7c05715904efc7388a6"

      def install
        bin.install "happy-rc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.28.0-9fc1902/happy_0.28.0-9fc1902_linux_amd64.tar.gz"
      sha256 "eb6daf309d628a907f43e8ccc6ae8d39a85b33151b19c0e3552727092b23e790"

      def install
        bin.install "happy-rc"
      end
    end
  end

  test do
    system "#{bin}/happy-rc"
  end
end
