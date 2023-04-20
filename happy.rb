# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Happy < Formula
  desc "A command line tool for happy path."
  homepage "https://github.com/chanzuckerberg/happy"
  version "0.73.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.73.1/happy_0.73.1_darwin_arm64.tar.gz"
      sha256 "6860857138f6574a39a42a57bdd09a9bffcaa8b2e8c6f22a9af4288a700cb042"

      def install
        bin.install "happy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.73.1/happy_0.73.1_darwin_amd64.tar.gz"
      sha256 "45fb716e27f4c6f120ce058f13920a806eb1b993324039423aadc7f2f8bd8093"

      def install
        bin.install "happy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.73.1/happy_0.73.1_linux_arm64.tar.gz"
      sha256 "55a43538ae0e896223e28b8c3123e1bd758415b9ae17edcdfa2b86314708db9a"

      def install
        bin.install "happy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.73.1/happy_0.73.1_linux_amd64.tar.gz"
      sha256 "c51209e4734deaad83b281d0a9b8cd9ddb673a8a268be642aaa48ac50467f5dd"

      def install
        bin.install "happy"
      end
    end
  end

  test do
    system "#{bin}/happy"
  end
end
