# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Happy < Formula
  desc "A command line tool for happy path."
  homepage "https://github.com/chanzuckerberg/happy"
  version "0.41.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.41.4/happy_0.41.4_darwin_arm64.tar.gz"
      sha256 "815c92cf7c278d6e1a6d04bf4e91083c250e8df5d46ee0b6e46d3382691282b9"

      def install
        bin.install "happy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.41.4/happy_0.41.4_darwin_amd64.tar.gz"
      sha256 "10430ed0b30589d11d41bb64d4e2cbf4bcc5ad834852db9bd26f10bb5a98b027"

      def install
        bin.install "happy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.41.4/happy_0.41.4_linux_arm64.tar.gz"
      sha256 "8f151718b5edf44ce80b930c7c587b009d007df9aa4863dbf52de13a9873dadf"

      def install
        bin.install "happy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.41.4/happy_0.41.4_linux_amd64.tar.gz"
      sha256 "6663f7e86f01448ae8a49698c73bdd8957d0b364713783b652226854a9c2fe7b"

      def install
        bin.install "happy"
      end
    end
  end

  test do
    system "#{bin}/happy"
  end
end
