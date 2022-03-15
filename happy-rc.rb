# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class HappyRc < Formula
  desc "A command line tool for happy path."
  homepage "https://github.com/chanzuckerberg/happy"
  version "0.13.0-399503c"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.13.0-399503c/happy_0.13.0-399503c_darwin_arm64.tar.gz"
      sha256 "330c8e1763d84f5303c811022ca76032a081c8d4214a31ad69ff8021bd8fbdca"

      def install
        bin.install "happy-rc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.13.0-399503c/happy_0.13.0-399503c_darwin_amd64.tar.gz"
      sha256 "9815e2202c587ebcacc094e8dc778cb90865467a2c15a92697c4bd5a115a5b63"

      def install
        bin.install "happy-rc"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.13.0-399503c/happy_0.13.0-399503c_linux_arm64.tar.gz"
      sha256 "30386e60a09d94aeabefcb0454585b4b2b41d265d4245c109e16cb353f6441a1"

      def install
        bin.install "happy-rc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.13.0-399503c/happy_0.13.0-399503c_linux_amd64.tar.gz"
      sha256 "194e416808c240cf54987edd2f67c0ac7a40881a466698d7d7afcb7c381be450"

      def install
        bin.install "happy-rc"
      end
    end
  end

  test do
    system "#{bin}/happy-rc"
  end
end
