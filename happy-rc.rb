# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class HappyRc < Formula
  desc "A command line tool for happy path."
  homepage "https://github.com/chanzuckerberg/happy"
  version "0.19.1-49a2505"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.19.1-49a2505/happy_0.19.1-49a2505_darwin_arm64.tar.gz"
      sha256 "cababd54869ff11b0dada7e135243634ca50a05dd826d8ea48620e63cce60e64"

      def install
        bin.install "happy-rc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.19.1-49a2505/happy_0.19.1-49a2505_darwin_amd64.tar.gz"
      sha256 "b2a2a3bc8d087d4d1ef973eaee596cb194d862f54b985994bf8e0d0cd2f3bd78"

      def install
        bin.install "happy-rc"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.19.1-49a2505/happy_0.19.1-49a2505_linux_amd64.tar.gz"
      sha256 "0254c9c8b8863fc05c0fa2a8a2ed4d66884071ad8984475c766de77eb9ec6e8a"

      def install
        bin.install "happy-rc"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.19.1-49a2505/happy_0.19.1-49a2505_linux_arm64.tar.gz"
      sha256 "32e42ec836b103488fd8e76b07e4192a45485dc38970bb03cba86a57ef24b923"

      def install
        bin.install "happy-rc"
      end
    end
  end

  test do
    system "#{bin}/happy-rc"
  end
end
