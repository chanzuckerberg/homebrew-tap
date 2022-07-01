# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Happy < Formula
  desc "A command line tool for happy path."
  homepage "https://github.com/chanzuckerberg/happy"
  version "0.25.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.25.0/happy_0.25.0_darwin_amd64.tar.gz"
      sha256 "560f45be209477df433e6a49aeb8cc1a63673d8eaa2344094ba6a3af414dba60"

      def install
        bin.install "happy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.25.0/happy_0.25.0_darwin_arm64.tar.gz"
      sha256 "054eaced498302607ddf12c7a22e5619bb8bfb2e78053a135452e9c8cb2c44e1"

      def install
        bin.install "happy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.25.0/happy_0.25.0_linux_amd64.tar.gz"
      sha256 "bf7f81dc3083d3984f80c4ff7f5ec2d55defc33af4f0979a26ce2aeaeb7fdcb6"

      def install
        bin.install "happy"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.25.0/happy_0.25.0_linux_arm64.tar.gz"
      sha256 "3810f530e311fcd1ba17ac1f00359f8e5d03ac6ca562975076bc78f5132308ff"

      def install
        bin.install "happy"
      end
    end
  end

  test do
    system "#{bin}/happy"
  end
end
