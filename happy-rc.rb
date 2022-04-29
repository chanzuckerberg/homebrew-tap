# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class HappyRc < Formula
  desc "A command line tool for happy path."
  homepage "https://github.com/chanzuckerberg/happy"
  version "0.17.0-9da3edc"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.17.0-9da3edc/happy_0.17.0-9da3edc_darwin_arm64.tar.gz"
      sha256 "93df2db775465e1c1d8a1eb0050ad80802fa909e769b872b6180d28a54791bc4"

      def install
        bin.install "happy-rc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.17.0-9da3edc/happy_0.17.0-9da3edc_darwin_amd64.tar.gz"
      sha256 "100f9562d4a073adfc211a7ce0df73124681e98c791d62e1cc706b29b048a136"

      def install
        bin.install "happy-rc"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.17.0-9da3edc/happy_0.17.0-9da3edc_linux_arm64.tar.gz"
      sha256 "a6b035158cfb7fa68977169dea717e2f1ed45169c1762e1b646cdf72824a6cfa"

      def install
        bin.install "happy-rc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.17.0-9da3edc/happy_0.17.0-9da3edc_linux_amd64.tar.gz"
      sha256 "276d47f5f1ccdbe59e8ac503f58448ae326afc561839826d5a4d2c8dc8c90c81"

      def install
        bin.install "happy-rc"
      end
    end
  end

  test do
    system "#{bin}/happy-rc"
  end
end
