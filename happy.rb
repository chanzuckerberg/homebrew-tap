# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Happy < Formula
  desc "A command line tool for happy path."
  homepage "https://github.com/chanzuckerberg/happy"
  version "0.110.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.110.0/happy_0.110.0_darwin_arm64.tar.gz"
      sha256 "ab11088bfea34b6071ea091c0514b2cdf867ead508b97e82aed4fd537a83da04"

      def install
        bin.install "happy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.110.0/happy_0.110.0_darwin_amd64.tar.gz"
      sha256 "f8270f2f8fbc2e5ce143a1a8cc3022ba56753a0d4a54ed3224a8c826005baa1b"

      def install
        bin.install "happy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.110.0/happy_0.110.0_linux_arm64.tar.gz"
      sha256 "94a4e9600d5bf16dcd85ed8fc7e03d6abb8457d8c1e9b29be00b917afce9e91f"

      def install
        bin.install "happy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.110.0/happy_0.110.0_linux_amd64.tar.gz"
      sha256 "5e6985e8eb2c3a5bd5fb9ea2a8752c90dd06c1c92a48a7716136296d2319fca6"

      def install
        bin.install "happy"
      end
    end
  end

  test do
    system "#{bin}/happy"
  end
end
