# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Happy < Formula
  desc "A command line tool for happy path."
  homepage "https://github.com/chanzuckerberg/happy"
  version "0.126.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.126.3/happy_0.126.3_darwin_arm64.tar.gz"
      sha256 "7a580ea7af91f0370809a2522f3287391297567de7bd64a275e9625d5d8bcfc4"

      def install
        bin.install "happy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.126.3/happy_0.126.3_darwin_amd64.tar.gz"
      sha256 "7e647584e9c100c6a53911751f81b81dd8040b02328e2e048d84bfe5a69cc208"

      def install
        bin.install "happy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.126.3/happy_0.126.3_linux_arm64.tar.gz"
      sha256 "deeedcee8ba9088c183e1d75eaf789b162040ee275826a1c6965f7388633472a"

      def install
        bin.install "happy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.126.3/happy_0.126.3_linux_amd64.tar.gz"
      sha256 "d3075904df4fa78b9fb517562aec19eac701797a437ee6abbaa665d1aa9a2492"

      def install
        bin.install "happy"
      end
    end
  end

  test do
    system "#{bin}/happy"
  end
end
