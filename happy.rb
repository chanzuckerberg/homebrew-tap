# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Happy < Formula
  desc "A command line tool for happy path."
  homepage "https://github.com/chanzuckerberg/happy"
  version "0.94.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.94.0/happy_0.94.0_darwin_arm64.tar.gz"
      sha256 "f15d8b33133d4e4e24c7731361843c155ca07bff2a4a7a69ecaa0a5323ed5521"

      def install
        bin.install "happy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.94.0/happy_0.94.0_darwin_amd64.tar.gz"
      sha256 "ede0aed14dbace57c1a7cde87386d8259780366bf260d651da9ad3fd0ee18da8"

      def install
        bin.install "happy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.94.0/happy_0.94.0_linux_arm64.tar.gz"
      sha256 "8fdcff9a59f8da5eac889b4119fc5e9a83b920d9f1c0d4c07d55dfef2cf3c747"

      def install
        bin.install "happy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.94.0/happy_0.94.0_linux_amd64.tar.gz"
      sha256 "5b3d7e701829ea8d1a6aa21327dcda5deaa099cc0d958f107216cd34a6125d95"

      def install
        bin.install "happy"
      end
    end
  end

  test do
    system "#{bin}/happy"
  end
end
