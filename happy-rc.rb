# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class HappyRc < Formula
  desc "A command line tool for happy path."
  homepage "https://github.com/chanzuckerberg/happy"
  version "0.29.0-4909c8e"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.29.0-4909c8e/happy_0.29.0-4909c8e_darwin_arm64.tar.gz"
      sha256 "5861acb400829ef46992c54c5725d550a0b8864aa720d52be0292690357cae51"

      def install
        bin.install "happy-rc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.29.0-4909c8e/happy_0.29.0-4909c8e_darwin_amd64.tar.gz"
      sha256 "665d04e01cf279bcb68690810d292444ede1b98cd485e6f2af07131d1ffa0f55"

      def install
        bin.install "happy-rc"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.29.0-4909c8e/happy_0.29.0-4909c8e_linux_arm64.tar.gz"
      sha256 "ccefcd19e59a17c2176b2085f62925a4a48acfb06480c4435cad74905df55717"

      def install
        bin.install "happy-rc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.29.0-4909c8e/happy_0.29.0-4909c8e_linux_amd64.tar.gz"
      sha256 "2569309d0e40e7e58e5b440ec3e1321effe0274a02ea9098c464a7b66e8edd8b"

      def install
        bin.install "happy-rc"
      end
    end
  end

  test do
    system "#{bin}/happy-rc"
  end
end
