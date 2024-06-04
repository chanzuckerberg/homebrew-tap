# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Argus < Formula
  desc "The command line tool for the Argus platform."
  homepage "https://github.com/chanzuckerberg/argus-artifacts"
  version "0.17.1"

  on_macos do
    on_intel do
      url "https://github.com/chanzuckerberg/argus-artifacts/releases/download/v0.17.1/argus_0.17.1_darwin_amd64.tar.gz"
      sha256 "e12c38cf8a145453516e48cf807a637b69906ed8d27e6e5b911e6307dcef1b44"

      def install
        bin.install "argus"
      end
    end
    on_arm do
      url "https://github.com/chanzuckerberg/argus-artifacts/releases/download/v0.17.1/argus_0.17.1_darwin_arm64.tar.gz"
      sha256 "8be390d6b874e47c132c2fcba768e3f5c905141da92c382aba961f8e648dd2bc"

      def install
        bin.install "argus"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/chanzuckerberg/argus-artifacts/releases/download/v0.17.1/argus_0.17.1_linux_amd64.tar.gz"
        sha256 "d79bf62de8facd7117e391d96d141cbd74f2cca3f5db7d79125d97e845fa1718"

        def install
          bin.install "argus"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/chanzuckerberg/argus-artifacts/releases/download/v0.17.1/argus_0.17.1_linux_arm64.tar.gz"
        sha256 "53f4773f69f5f0b4831e69df0de926fc78725986af4d526bcb944114eaadc1d0"

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
