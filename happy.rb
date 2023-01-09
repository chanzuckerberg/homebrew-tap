# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Happy < Formula
  desc "A command line tool for happy path."
  homepage "https://github.com/chanzuckerberg/happy"
  version "0.46.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.46.1/happy_0.46.1_darwin_amd64.tar.gz"
      sha256 "ef3444b85f164d5d96d4ce39b3aa04a4c210f43d4df5f5329b6bbd6b104832dd"

      def install
        bin.install "happy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.46.1/happy_0.46.1_darwin_arm64.tar.gz"
      sha256 "b5b7c5c70b7c9cbdaf8e21c537afea972952466874435b480f95a6bf7288e2ff"

      def install
        bin.install "happy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.46.1/happy_0.46.1_linux_amd64.tar.gz"
      sha256 "51ab9f79268668990e423a277ad302dae6449623a6063683be693c9b20f52afa"

      def install
        bin.install "happy"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.46.1/happy_0.46.1_linux_arm64.tar.gz"
      sha256 "56d06c937e816d647b04ea87252a729bbac04d88814af50f3d8369b3ee043e5e"

      def install
        bin.install "happy"
      end
    end
  end

  test do
    system "#{bin}/happy"
  end
end
