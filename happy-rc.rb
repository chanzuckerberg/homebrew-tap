# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class HappyRc < Formula
  desc "A command line tool for happy path."
  homepage "https://github.com/chanzuckerberg/happy"
  version "0.29.1-d104ada"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.29.1-d104ada/happy_0.29.1-d104ada_darwin_amd64.tar.gz"
      sha256 "32d7324c8bbb4b2b9221b9c80ebdce53d0346fd5ff3099e7f2bc3c0b2797c16c"

      def install
        bin.install "happy-rc"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.29.1-d104ada/happy_0.29.1-d104ada_darwin_arm64.tar.gz"
      sha256 "596e41b21e6217a2bf8b001cf3bf5eb73aec6980407c8df1ca004e560eca0473"

      def install
        bin.install "happy-rc"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.29.1-d104ada/happy_0.29.1-d104ada_linux_arm64.tar.gz"
      sha256 "7a118050d22b8d2d3c24a86e5f3d345a7944142bb3c242ca9ff9646b076812f9"

      def install
        bin.install "happy-rc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.29.1-d104ada/happy_0.29.1-d104ada_linux_amd64.tar.gz"
      sha256 "07bc8e92aff8a774954633a4ed04db4934e7b445eb8ff2cfccbfe98163432081"

      def install
        bin.install "happy-rc"
      end
    end
  end

  test do
    system "#{bin}/happy-rc"
  end
end
