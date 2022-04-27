# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class HappyRc < Formula
  desc "A command line tool for happy path."
  homepage "https://github.com/chanzuckerberg/happy"
  version "0.16.3-6299c1c"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.16.3-6299c1c/happy_0.16.3-6299c1c_darwin_arm64.tar.gz"
      sha256 "c8bfc5861fc7f9a23db1f66801a563075e617fbb21945ad75d1ae779833f0113"

      def install
        bin.install "happy-rc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.16.3-6299c1c/happy_0.16.3-6299c1c_darwin_amd64.tar.gz"
      sha256 "65c8d0c61159df234733adfe0611686c41ba0f1f105d6884d627ff06f9c44aa9"

      def install
        bin.install "happy-rc"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.16.3-6299c1c/happy_0.16.3-6299c1c_linux_arm64.tar.gz"
      sha256 "a70ba8dfc7d4defde60996131f9303dfbea2b57b8bba766a270c9d17856c1a30"

      def install
        bin.install "happy-rc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.16.3-6299c1c/happy_0.16.3-6299c1c_linux_amd64.tar.gz"
      sha256 "5360d3bc187747de2e5891074a0efc9da13f8843fcb6a6ec0174c32709d81c66"

      def install
        bin.install "happy-rc"
      end
    end
  end

  test do
    system "#{bin}/happy-rc"
  end
end
