# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class HappyRc < Formula
  desc "A command line tool for happy path."
  homepage "https://github.com/chanzuckerberg/happy"
  version "0.28.0-0b8f9ad"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.28.0-0b8f9ad/happy_0.28.0-0b8f9ad_darwin_arm64.tar.gz"
      sha256 "79fd8fd9bf409ce8b15ae0283e2ace428964e309197da4b000dca1e650dfefdf"

      def install
        bin.install "happy-rc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.28.0-0b8f9ad/happy_0.28.0-0b8f9ad_darwin_amd64.tar.gz"
      sha256 "b0f92ac6850b28c7bc5cdfe93bd472f1e6e5930b1d937841ead021f4d6a15f6d"

      def install
        bin.install "happy-rc"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.28.0-0b8f9ad/happy_0.28.0-0b8f9ad_linux_arm64.tar.gz"
      sha256 "f7e59be5f3a9d8dc1eabd3d7e314216bbbb3d07f690e24d72a2cc09cbe3a2f26"

      def install
        bin.install "happy-rc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.28.0-0b8f9ad/happy_0.28.0-0b8f9ad_linux_amd64.tar.gz"
      sha256 "a191351ffc9d27861ed0ffb0c0b4a8d262c65c461c636a95fed7990a111ff4cf"

      def install
        bin.install "happy-rc"
      end
    end
  end

  test do
    system "#{bin}/happy-rc"
  end
end
