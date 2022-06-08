# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class HappyRc < Formula
  desc "A command line tool for happy path."
  homepage "https://github.com/chanzuckerberg/happy"
  version "0.21.0-c85cb58"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.21.0-c85cb58/happy_0.21.0-c85cb58_darwin_amd64.tar.gz"
      sha256 "524fb5f56f0b0430cf19ffc251fa1c2ff03564d1ce36e4b4b7c1670e8b3d4d9b"

      def install
        bin.install "happy-rc"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.21.0-c85cb58/happy_0.21.0-c85cb58_darwin_arm64.tar.gz"
      sha256 "95b9a374d68a1f98b478d50f05573255c7b40fc302a87fa02490154160005e0f"

      def install
        bin.install "happy-rc"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.21.0-c85cb58/happy_0.21.0-c85cb58_linux_amd64.tar.gz"
      sha256 "8fac595930d2bffd1297be3dd10bedf31ea1bc74314b516ef492128ce79f96c7"

      def install
        bin.install "happy-rc"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.21.0-c85cb58/happy_0.21.0-c85cb58_linux_arm64.tar.gz"
      sha256 "a76c27a1c56c5ad68ca8e8115bab4c4b00fd50da102b3da69d178b2419e3eacf"

      def install
        bin.install "happy-rc"
      end
    end
  end

  test do
    system "#{bin}/happy-rc"
  end
end
