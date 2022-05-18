# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class HappyRc < Formula
  desc "A command line tool for happy path."
  homepage "https://github.com/chanzuckerberg/happy"
  version "0.19.1-62afc12"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.19.1-62afc12/happy_0.19.1-62afc12_darwin_amd64.tar.gz"
      sha256 "face651b04fb1da77f04ff09be07c7d3633c86c1b841e59f1beab0c8b3b5806f"

      def install
        bin.install "happy-rc"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.19.1-62afc12/happy_0.19.1-62afc12_darwin_arm64.tar.gz"
      sha256 "df455894719339a011e045b1a53fa74bee6cace43ea9f33fce58452716b53ac6"

      def install
        bin.install "happy-rc"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.19.1-62afc12/happy_0.19.1-62afc12_linux_amd64.tar.gz"
      sha256 "9622bb5aeeb425b0a0ea712af5e14f5f6a0863e73c8313942d4466150989295a"

      def install
        bin.install "happy-rc"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.19.1-62afc12/happy_0.19.1-62afc12_linux_arm64.tar.gz"
      sha256 "dc1b3a8ad395673b7a26530ebb4da0780b9121cd9c316c66599926424631766e"

      def install
        bin.install "happy-rc"
      end
    end
  end

  test do
    system "#{bin}/happy-rc"
  end
end
