# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Happy < Formula
  desc "A command line tool for happy path."
  homepage "https://github.com/chanzuckerberg/happy"
  version "0.23.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.23.0/happy_0.23.0_darwin_arm64.tar.gz"
      sha256 "d53dc88ee838addd1b03614d05409983d08ed109a1584e023624e76131e6175b"

      def install
        bin.install "happy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.23.0/happy_0.23.0_darwin_amd64.tar.gz"
      sha256 "aa55db6fd0c1edb31a74c733f34da5ad68fadca48d60a8048d1cf0138eba5ead"

      def install
        bin.install "happy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.23.0/happy_0.23.0_linux_arm64.tar.gz"
      sha256 "c47b17f82958173d49966b913826a6a1a27ab7ea1a784f5b51ced98e10ec71d0"

      def install
        bin.install "happy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.23.0/happy_0.23.0_linux_amd64.tar.gz"
      sha256 "23c0c0ec5665af318839d03e0e8744956b43593ad7690ebc029f337d1f590bcc"

      def install
        bin.install "happy"
      end
    end
  end

  test do
    system "#{bin}/happy"
  end
end
