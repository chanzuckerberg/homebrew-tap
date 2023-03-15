# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Happy < Formula
  desc "A command line tool for happy path."
  homepage "https://github.com/chanzuckerberg/happy"
  version "0.65.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.65.0/happy_0.65.0_darwin_arm64.tar.gz"
      sha256 "b6a32ba4271a30b2cf9511cb4bc5d3555404336810aefabda352175d80fdf4b9"

      def install
        bin.install "happy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.65.0/happy_0.65.0_darwin_amd64.tar.gz"
      sha256 "cb302b49be0406234bc10fbcfd39d5241c5b74817da3ef16cb7a1ffef30e4eff"

      def install
        bin.install "happy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.65.0/happy_0.65.0_linux_arm64.tar.gz"
      sha256 "9db3340dfe5872e2e3145f27293c975523f39f1c93d93a19af121942e866eb60"

      def install
        bin.install "happy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.65.0/happy_0.65.0_linux_amd64.tar.gz"
      sha256 "6e58b12ed37de1d1e340988f78357f57b3baffc1d2b75b831001a7d9f64342e8"

      def install
        bin.install "happy"
      end
    end
  end

  test do
    system "#{bin}/happy"
  end
end
