# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Argus < Formula
  desc "The command line tool for the Argus platform."
  homepage "https://github.com/chanzuckerberg/argus-artifacts"
  version "0.57.0"

  on_macos do
    on_intel do
      url "https://github.com/chanzuckerberg/argus-artifacts/releases/download/v0.57.0/argus_0.57.0_darwin_amd64.tar.gz"
      sha256 "e65478a14df789264b1cc979a2b97e156c14b61787b39e93c86f5af553bc1940"

      def install
        bin.install "argus"
      end
    end
    on_arm do
      url "https://github.com/chanzuckerberg/argus-artifacts/releases/download/v0.57.0/argus_0.57.0_darwin_arm64.tar.gz"
      sha256 "8bd80e55862b41fae23abb55aa81650c69fd79fbf979cb7977af1af1334a2a60"

      def install
        bin.install "argus"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/chanzuckerberg/argus-artifacts/releases/download/v0.57.0/argus_0.57.0_linux_amd64.tar.gz"
        sha256 "c608413fae42012f610048395decc5b99585207c4cab7fbbff975afc81e5aa46"

        def install
          bin.install "argus"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/chanzuckerberg/argus-artifacts/releases/download/v0.57.0/argus_0.57.0_linux_arm64.tar.gz"
        sha256 "f0ed83430c1bb09deb55e6ed9648502b992d48b35e174aa2f43a4283fe4df5f9"

        def install
          bin.install "argus"
        end
      end
    end
  end

  test do
    system "#{bin}/argus version"
  end
end
