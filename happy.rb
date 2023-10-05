# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Happy < Formula
  desc "A command line tool for happy path."
  homepage "https://github.com/chanzuckerberg/happy"
  version "0.110.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.110.1/happy_0.110.1_darwin_arm64.tar.gz"
      sha256 "4baf260da5c23d2d1f1dfa3afa83885a91c488adef98e09304b8efcaa766bfab"

      def install
        bin.install "happy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.110.1/happy_0.110.1_darwin_amd64.tar.gz"
      sha256 "33e77efff732c92d71fc951f987d3aa642c1e4c877045d33cd95980d374d6998"

      def install
        bin.install "happy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.110.1/happy_0.110.1_linux_arm64.tar.gz"
      sha256 "a52ac3a14176f17259780dd9ed20ea2ecc9f805b6b0e280da4c84b4dbe480c3c"

      def install
        bin.install "happy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.110.1/happy_0.110.1_linux_amd64.tar.gz"
      sha256 "1cc572a13480c5d4fa8699bacfc20a7246980c1d86dca3034c6202896b7b8336"

      def install
        bin.install "happy"
      end
    end
  end

  test do
    system "#{bin}/happy"
  end
end
