# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Happy < Formula
  desc "A command line tool for happy path."
  homepage "https://github.com/chanzuckerberg/happy"
  version "0.15.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.15.1/happy_0.15.1_darwin_arm64.tar.gz"
      sha256 "da1b9dc1b39cdfeb6b37629e3101b70db84bdcbdfcf7489d624586b432ee1a28"

      def install
        bin.install "happy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.15.1/happy_0.15.1_darwin_amd64.tar.gz"
      sha256 "79706df70b31026590d04dbf41f7d28fe9d4a62515bbe04fa9a1bd43426a8029"

      def install
        bin.install "happy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.15.1/happy_0.15.1_linux_amd64.tar.gz"
      sha256 "f9bf87b21d7f8651be9f52d60465f2a3384cf842d7752c59b63b5fc49202aece"

      def install
        bin.install "happy"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.15.1/happy_0.15.1_linux_arm64.tar.gz"
      sha256 "228ada867d0438c83da484ce54cac93a949c5b0bb63559923df5afa62e914633"

      def install
        bin.install "happy"
      end
    end
  end

  test do
    system "#{bin}/happy"
  end
end
