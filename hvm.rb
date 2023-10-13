# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Hvm < Formula
  desc "An environment manager for happy path."
  homepage "https://github.com/chanzuckerberg/happy"
  version "0.111.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.111.0/hvm_0.111.0_darwin_arm64.tar.gz"
      sha256 "7ec4c7f5ae95fed149477675e257029405a1c5280a2c375b0d8f08b8f77f17c9"

      def install
        bin.install "hvm"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.111.0/hvm_0.111.0_darwin_amd64.tar.gz"
      sha256 "179267f6d9d18ea2e64cb4967ed35dac8f9eb1ed8d1c00b3a71b641456954aa6"

      def install
        bin.install "hvm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.111.0/hvm_0.111.0_linux_arm64.tar.gz"
      sha256 "4205c772310f5f01d80b188a5896ed8e752e3619eb53cdbf808861eee2841f3d"

      def install
        bin.install "hvm"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.111.0/hvm_0.111.0_linux_amd64.tar.gz"
      sha256 "72f54ec7200f9931f96a6e26b17f23eec0a2b2588f641436740d1e5f4c24fcc9"

      def install
        bin.install "hvm"
      end
    end
  end

  test do
    system "#{bin}/hvm"
  end
end
