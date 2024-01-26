# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Hvm < Formula
  desc "An environment manager for happy path."
  homepage "https://github.com/chanzuckerberg/happy"
  version "0.125.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.125.3/hvm_0.125.3_darwin_arm64.tar.gz"
      sha256 "1d2553cddd4d865295d3f6115b5328a936e647b0090c27ce6504696b6bab6cd3"

      def install
        bin.install "hvm"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.125.3/hvm_0.125.3_darwin_amd64.tar.gz"
      sha256 "13e7c81b99782b0f01ec06fd93d55fb6426755a838ea91f479e17c88653239b5"

      def install
        bin.install "hvm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.125.3/hvm_0.125.3_linux_arm64.tar.gz"
      sha256 "18072486a47ffbcae1ab05295e64e58e162542c15306bfeaf36c44017eb3e6dc"

      def install
        bin.install "hvm"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.125.3/hvm_0.125.3_linux_amd64.tar.gz"
      sha256 "c8382ac07f638678dccf4df7e6d85166958f237b2fd1e1f6fd5887501c03f9cc"

      def install
        bin.install "hvm"
      end
    end
  end

  test do
    system "#{bin}/hvm"
  end
end
