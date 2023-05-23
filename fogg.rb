# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Fogg < Formula
  desc "Terraform without pain."
  homepage "https://github.com/chanzuckerberg/fogg"
  version "0.86.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chanzuckerberg/fogg/releases/download/v0.86.0/fogg_0.86.0_darwin_arm64.tar.gz"
      sha256 "7278f87a11ddcd5e79b46bdb26fbb9cc46f098829d776e6dbd88232d7087922d"

      def install
        bin.install "fogg"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/fogg/releases/download/v0.86.0/fogg_0.86.0_darwin_amd64.tar.gz"
      sha256 "a890bec75d6218796becb152ddadae0e40773d2ef26f0bc5625be94255a5586a"

      def install
        bin.install "fogg"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chanzuckerberg/fogg/releases/download/v0.86.0/fogg_0.86.0_linux_arm64.tar.gz"
      sha256 "e2430e9fdaee7bf54300884513dd6adcc2cfd9bc157bf97cf0ae67717f1b8399"

      def install
        bin.install "fogg"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/fogg/releases/download/v0.86.0/fogg_0.86.0_linux_amd64.tar.gz"
      sha256 "c43eac62a45c23b6882551e6c5e8af21e513e29792ad91b6b38786cb6554a996"

      def install
        bin.install "fogg"
      end
    end
  end

  test do
    system "#{bin}/fogg version"
  end
end
