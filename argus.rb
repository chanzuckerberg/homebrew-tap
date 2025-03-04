# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Argus < Formula
  desc "The command line tool for the Argus platform."
  homepage "https://github.com/chanzuckerberg/argus-artifacts"
  version "0.54.1"

  on_macos do
    on_intel do
      url "https://github.com/chanzuckerberg/argus-artifacts/releases/download/v0.54.1/argus_0.54.1_darwin_amd64.tar.gz"
      sha256 "280f10b28f613c5099342b7a9441677f3431758238d9a6c5ab6bee7cfa732824"

      def install
        bin.install "argus"
      end
    end
    on_arm do
      url "https://github.com/chanzuckerberg/argus-artifacts/releases/download/v0.54.1/argus_0.54.1_darwin_arm64.tar.gz"
      sha256 "67cc43845efe40110fae5ad238625d47720db32879403de83926a497f9fd17e0"

      def install
        bin.install "argus"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/chanzuckerberg/argus-artifacts/releases/download/v0.54.1/argus_0.54.1_linux_amd64.tar.gz"
        sha256 "2a21a8562d23336fb4723b07ac73dae1395175b4e12e706afc7c1a4be97f5f61"

        def install
          bin.install "argus"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/chanzuckerberg/argus-artifacts/releases/download/v0.54.1/argus_0.54.1_linux_arm64.tar.gz"
        sha256 "3061a9a41a4e06392f615ae934d785bfe85e143f19bffb70d699efb3eafdd6a6"

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
