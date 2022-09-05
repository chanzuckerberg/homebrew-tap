# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class HappyRc < Formula
  desc "A command line tool for happy path."
  homepage "https://github.com/chanzuckerberg/happy"
  version "0.29.1-d453a1f"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.29.1-d453a1f/happy_0.29.1-d453a1f_darwin_arm64.tar.gz"
      sha256 "8fb4f8ba9ddf2d635d2b665bdcd523557712c53fe8d1a82b20b07985fcd06205"

      def install
        bin.install "happy-rc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.29.1-d453a1f/happy_0.29.1-d453a1f_darwin_amd64.tar.gz"
      sha256 "2e0e2d233d12eb3f261fdc03d8b98de8fddc78fc31639313069f9f9c52f73497"

      def install
        bin.install "happy-rc"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.29.1-d453a1f/happy_0.29.1-d453a1f_linux_amd64.tar.gz"
      sha256 "bed9a0221fd2c162714aedcee67318cf33e2065487c5a31a5dcf1cb85843136b"

      def install
        bin.install "happy-rc"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.29.1-d453a1f/happy_0.29.1-d453a1f_linux_arm64.tar.gz"
      sha256 "1ceec31f5f2f455af81832333f1faabf043e042cefc56593345be9aef6511a88"

      def install
        bin.install "happy-rc"
      end
    end
  end

  test do
    system "#{bin}/happy-rc"
  end
end
