# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class HappyRc < Formula
  desc "A command line tool for happy path."
  homepage "https://github.com/chanzuckerberg/happy"
  version "0.26.0-c72ac77"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.26.0-c72ac77/happy_0.26.0-c72ac77_darwin_arm64.tar.gz"
      sha256 "e2f288ace2aa50a173a9dbb32beefab9cdca89e5be3d5f82410a696f331bd0c5"

      def install
        bin.install "happy-rc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.26.0-c72ac77/happy_0.26.0-c72ac77_darwin_amd64.tar.gz"
      sha256 "5a764014665ce75e4966a181063c84700a008619c048803886849abf14fcc497"

      def install
        bin.install "happy-rc"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.26.0-c72ac77/happy_0.26.0-c72ac77_linux_arm64.tar.gz"
      sha256 "62fbce01a32086aa590987694bcafc679be34bc75865ff7717ac4231c3198fc2"

      def install
        bin.install "happy-rc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.26.0-c72ac77/happy_0.26.0-c72ac77_linux_amd64.tar.gz"
      sha256 "aeaba2b956f8d47e7bae8e550b075aadf457fc5bacbae0b7ac2a620ec0486b79"

      def install
        bin.install "happy-rc"
      end
    end
  end

  test do
    system "#{bin}/happy-rc"
  end
end
