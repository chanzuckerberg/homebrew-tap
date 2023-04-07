# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Happy < Formula
  desc "A command line tool for happy path."
  homepage "https://github.com/chanzuckerberg/happy"
  version "0.69.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.69.0/happy_0.69.0_darwin_arm64.tar.gz"
      sha256 "a4e00b5dee7d91c0e065fc2c45557f67894c42aeb98ca3bcce30658f8ded4982"

      def install
        bin.install "happy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.69.0/happy_0.69.0_darwin_amd64.tar.gz"
      sha256 "3f975d2cd391311cc1078f560b09a58147126bcbbd0af3b6d377d3721272c81f"

      def install
        bin.install "happy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.69.0/happy_0.69.0_linux_arm64.tar.gz"
      sha256 "18579d6c78c75dfa1e7e88215d43d96bae6b2f660a95b735e4276db07a9f737d"

      def install
        bin.install "happy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.69.0/happy_0.69.0_linux_amd64.tar.gz"
      sha256 "67255b32970d96eb9d3be2eed588e1104d308dba7b8a951d2d07d10c208c8647"

      def install
        bin.install "happy"
      end
    end
  end

  test do
    system "#{bin}/happy"
  end
end
