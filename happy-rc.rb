# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class HappyRc < Formula
  desc "A command line tool for happy path."
  homepage "https://github.com/chanzuckerberg/happy"
  version "0.15.3-8107bc0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.15.3-8107bc0/happy_0.15.3-8107bc0_darwin_arm64.tar.gz"
      sha256 "879374a57638c7ee068e07eb7b266cc3b7df967e23d8d673358bb0165015a5b3"

      def install
        bin.install "happy-rc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.15.3-8107bc0/happy_0.15.3-8107bc0_darwin_amd64.tar.gz"
      sha256 "1b14e7f08ca3239a8a68f8d670c8abfa8e223ac44c6c137393f36153e944a6c9"

      def install
        bin.install "happy-rc"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.15.3-8107bc0/happy_0.15.3-8107bc0_linux_amd64.tar.gz"
      sha256 "1fe53b269b258cc88f3826be52aedca018cfd433678c8093b50c2dc3a0720e86"

      def install
        bin.install "happy-rc"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.15.3-8107bc0/happy_0.15.3-8107bc0_linux_arm64.tar.gz"
      sha256 "4b8437f162ef0b924ce71ae98d7733e3afb47209ba78d46135e9bcb0eab6f25c"

      def install
        bin.install "happy-rc"
      end
    end
  end

  test do
    system "#{bin}/happy-rc"
  end
end
