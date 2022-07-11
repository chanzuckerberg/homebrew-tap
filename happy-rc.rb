# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class HappyRc < Formula
  desc "A command line tool for happy path."
  homepage "https://github.com/chanzuckerberg/happy"
  version "0.25.0-3ea4df1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.25.0-3ea4df1/happy_0.25.0-3ea4df1_darwin_amd64.tar.gz"
      sha256 "2fdb8f95bc4f2f18f7510bd36efc1f0c906da1d8ebde7391e20aacb587355806"

      def install
        bin.install "happy-rc"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.25.0-3ea4df1/happy_0.25.0-3ea4df1_darwin_arm64.tar.gz"
      sha256 "a06e15df03b90c6f1eebbc39efb10028ada8015ddb4565d9c00aa241d7603b0e"

      def install
        bin.install "happy-rc"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.25.0-3ea4df1/happy_0.25.0-3ea4df1_linux_arm64.tar.gz"
      sha256 "e55805266ac6f53bd0c83be40194384d64aeff5a5b94b05599624c384050dd07"

      def install
        bin.install "happy-rc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.25.0-3ea4df1/happy_0.25.0-3ea4df1_linux_amd64.tar.gz"
      sha256 "b4f0ce13b5d1236297654cd88cfe1a452d70045a217c7741e570935ac9b2b267"

      def install
        bin.install "happy-rc"
      end
    end
  end

  test do
    system "#{bin}/happy-rc"
  end
end
