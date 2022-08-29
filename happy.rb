# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Happy < Formula
  desc "A command line tool for happy path."
  homepage "https://github.com/chanzuckerberg/happy"
  version "0.29.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.29.0/happy_0.29.0_darwin_arm64.tar.gz"
      sha256 "2f7428311e00f3d5957f01f18aefed4fef4ba0a8446c2920dce5203c7efacb98"

      def install
        bin.install "happy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.29.0/happy_0.29.0_darwin_amd64.tar.gz"
      sha256 "5c93b7b4092e68348adbe0a35d2464d250f8c83aa719a8f8c02abdc91e166a13"

      def install
        bin.install "happy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.29.0/happy_0.29.0_linux_amd64.tar.gz"
      sha256 "1fa61fce269a0c2b9d68f7d97b8f04d6320bcadf94026fc89a9584bd318a0e13"

      def install
        bin.install "happy"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.29.0/happy_0.29.0_linux_arm64.tar.gz"
      sha256 "1ebf9c2a672f6845e3485d81572629604d197d7593c42670001ccca8866a10ab"

      def install
        bin.install "happy"
      end
    end
  end

  test do
    system "#{bin}/happy"
  end
end
