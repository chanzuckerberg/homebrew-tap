# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class HappyRc < Formula
  desc "A command line tool for happy path."
  homepage "https://github.com/chanzuckerberg/happy"
  version "0.24.0-9cfc9f7"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.24.0-9cfc9f7/happy_0.24.0-9cfc9f7_darwin_arm64.tar.gz"
      sha256 "9e1c0c863ddeb082651e283b78ffe91de39d8c8b2e22de31c571fe73a85debb2"

      def install
        bin.install "happy-rc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.24.0-9cfc9f7/happy_0.24.0-9cfc9f7_darwin_amd64.tar.gz"
      sha256 "77f6f3f6603f3e076a0aecdb6383b3b487d698563c1d832ca55f22a5186c9e8a"

      def install
        bin.install "happy-rc"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.24.0-9cfc9f7/happy_0.24.0-9cfc9f7_linux_arm64.tar.gz"
      sha256 "a6ea714989081868a2b3c2ad59e470d88e786b442a875bab78a486730d665e61"

      def install
        bin.install "happy-rc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.24.0-9cfc9f7/happy_0.24.0-9cfc9f7_linux_amd64.tar.gz"
      sha256 "668e3bc97f9d77a348dd3950705028ac12b5c01c369e9e1a4fba02b8db0904f8"

      def install
        bin.install "happy-rc"
      end
    end
  end

  test do
    system "#{bin}/happy-rc"
  end
end
