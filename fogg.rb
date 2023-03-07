# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Fogg < Formula
  desc "Terraform without pain."
  homepage "https://github.com/chanzuckerberg/fogg"
  version "0.79.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chanzuckerberg/fogg/releases/download/v0.79.1/fogg_0.79.1_darwin_arm64.tar.gz"
      sha256 "4dedf5cfc9de4f37b965b74bac0cbf61cc09d47739debdd4af9ace0def3300b8"

      def install
        bin.install "fogg"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/fogg/releases/download/v0.79.1/fogg_0.79.1_darwin_amd64.tar.gz"
      sha256 "3b81d62d1dddb5b7b9d79a8dc64186e28e6ca007f874f98b362729f4c324495b"

      def install
        bin.install "fogg"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chanzuckerberg/fogg/releases/download/v0.79.1/fogg_0.79.1_linux_arm64.tar.gz"
      sha256 "ee214bcbd5de87faa840b5bb797bdc6a1c6c5db7f25dc1b7e4b1ccced6bfe130"

      def install
        bin.install "fogg"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/fogg/releases/download/v0.79.1/fogg_0.79.1_linux_amd64.tar.gz"
      sha256 "63d47ef5904569f0ea65b4eed5fdf294d8675f58fbb7204f92ba7af0fdce55b9"

      def install
        bin.install "fogg"
      end
    end
  end

  test do
    system "#{bin}/fogg version"
  end
end
