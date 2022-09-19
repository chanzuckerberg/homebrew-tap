# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class HappyRc < Formula
  desc "A command line tool for happy path."
  homepage "https://github.com/chanzuckerberg/happy"
  version "0.29.2-46cdbb2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.29.2-46cdbb2/happy_0.29.2-46cdbb2_darwin_arm64.tar.gz"
      sha256 "47fe6ce9efa1843305dbd3a8224463ad8ab42a75bdaa036b515ce447a02d0eb9"

      def install
        bin.install "happy-rc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.29.2-46cdbb2/happy_0.29.2-46cdbb2_darwin_amd64.tar.gz"
      sha256 "1aad8acbd2a6faa886bc91b68b79e09434a927cbcf66d28df4e5981e85e7a48e"

      def install
        bin.install "happy-rc"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.29.2-46cdbb2/happy_0.29.2-46cdbb2_linux_amd64.tar.gz"
      sha256 "31b0e57ede2f1addb95da88743fa71f491558f4e5df7db4b75f39c9fffd1302c"

      def install
        bin.install "happy-rc"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.29.2-46cdbb2/happy_0.29.2-46cdbb2_linux_arm64.tar.gz"
      sha256 "8728bfb06f7724bc7bfbdb1f4f31ad12b64dcd32b91135b52b0fd3eba352bf57"

      def install
        bin.install "happy-rc"
      end
    end
  end

  test do
    system "#{bin}/happy-rc"
  end
end
