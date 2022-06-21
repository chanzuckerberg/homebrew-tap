# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class HappyRc < Formula
  desc "A command line tool for happy path."
  homepage "https://github.com/chanzuckerberg/happy"
  version "0.23.1-a7b59a0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.23.1-a7b59a0/happy_0.23.1-a7b59a0_darwin_amd64.tar.gz"
      sha256 "9c61750adfead3e5c67d4373090814e3f682499b8f0d0a31320e858127cca469"

      def install
        bin.install "happy-rc"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.23.1-a7b59a0/happy_0.23.1-a7b59a0_darwin_arm64.tar.gz"
      sha256 "25f524c9f1509455223626633cde021501e2b6da107855e93d43afa8e06183c1"

      def install
        bin.install "happy-rc"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.23.1-a7b59a0/happy_0.23.1-a7b59a0_linux_arm64.tar.gz"
      sha256 "0a1374a9afc88ba3f479e7149a2284ee741d1619608312f63a7235180df00782"

      def install
        bin.install "happy-rc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.23.1-a7b59a0/happy_0.23.1-a7b59a0_linux_amd64.tar.gz"
      sha256 "e992468d415e47738c691a39f0bfce173d35e4feec9e6621fc03dd8b3c425a13"

      def install
        bin.install "happy-rc"
      end
    end
  end

  test do
    system "#{bin}/happy-rc"
  end
end
