# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Argus < Formula
  desc "The command line tool for the Argus platform."
  homepage "https://github.com/chanzuckerberg/argus-artifacts"
  version "0.8.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/argus-artifacts/releases/download/v0.8.1/argus_0.8.1_darwin_amd64.tar.gz"
      sha256 "5cfad52c28503832bd3f09f90448a065c3133feaddbaa0c217c244c23ce2e856"

      def install
        bin.install "argus"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/chanzuckerberg/argus-artifacts/releases/download/v0.8.1/argus_0.8.1_darwin_arm64.tar.gz"
      sha256 "65207476519c3168894c1f537298dfc00c3e2b955becea26c7677b5758df2d56"

      def install
        bin.install "argus"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/argus-artifacts/releases/download/v0.8.1/argus_0.8.1_linux_amd64.tar.gz"
      sha256 "3ffcaf4dadffb30f8ec5a51dd47909332a414caf5e3562b7cba94cc6f014f078"

      def install
        bin.install "argus"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chanzuckerberg/argus-artifacts/releases/download/v0.8.1/argus_0.8.1_linux_arm64.tar.gz"
      sha256 "864431178557813a53dc3da5f8209898f56efd8c0e58972bcaf68026a5e3e2cd"

      def install
        bin.install "argus"
      end
    end
  end

  test do
    system "#{bin}/argus version"
  end
end
