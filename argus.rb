# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Argus < Formula
  desc "The command line tool for the Argus platform."
  homepage "https://github.com/chanzuckerberg/argus-artifacts"
  version "0.54.3"

  on_macos do
    on_intel do
      url "https://github.com/chanzuckerberg/argus-artifacts/releases/download/v0.54.3/argus_0.54.3_darwin_amd64.tar.gz"
      sha256 "7b4da219e71847f3643c513b683dbfdf94b5b196c45d73732455f108eecf1609"

      def install
        bin.install "argus"
      end
    end
    on_arm do
      url "https://github.com/chanzuckerberg/argus-artifacts/releases/download/v0.54.3/argus_0.54.3_darwin_arm64.tar.gz"
      sha256 "8f1d8985475c66bd282a4bbbc44c5d63a5ee2321af4884ba2b2bb34af50586ee"

      def install
        bin.install "argus"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/chanzuckerberg/argus-artifacts/releases/download/v0.54.3/argus_0.54.3_linux_amd64.tar.gz"
        sha256 "cfd5153621feea25ff6440e2a13aef1b5455a0784f8cfda1bd41a85274315b31"

        def install
          bin.install "argus"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/chanzuckerberg/argus-artifacts/releases/download/v0.54.3/argus_0.54.3_linux_arm64.tar.gz"
        sha256 "6ae588215ddb6794b3d12ca47e938d296703cb6ec23a7e43ddd5f618a37a48bb"

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
