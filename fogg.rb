# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Fogg < Formula
  desc "Terraform without pain."
  homepage "https://github.com/chanzuckerberg/fogg"
  version "0.82.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chanzuckerberg/fogg/releases/download/v0.82.3/fogg_0.82.3_darwin_arm64.tar.gz"
      sha256 "040c076df45ad9533998106d6ebbb48dbd4134ae14f81e6c2147afa472a60904"

      def install
        bin.install "fogg"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/fogg/releases/download/v0.82.3/fogg_0.82.3_darwin_amd64.tar.gz"
      sha256 "30748117ba0748c9db5fe3843cdb7fd8d58d1b276a2cefd817dbda69904548e0"

      def install
        bin.install "fogg"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/fogg/releases/download/v0.82.3/fogg_0.82.3_linux_amd64.tar.gz"
      sha256 "3dfc0f5b7770b50490d309a6456290580b5ae7ac2b01cb7b76df29e58cbcac16"

      def install
        bin.install "fogg"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chanzuckerberg/fogg/releases/download/v0.82.3/fogg_0.82.3_linux_arm64.tar.gz"
      sha256 "3359772c2b407e2f0cbe350051d3a6edef23ed4fa919833545c4a209b9173a54"

      def install
        bin.install "fogg"
      end
    end
  end

  test do
    system "#{bin}/fogg version"
  end
end
