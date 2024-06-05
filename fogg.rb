# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Fogg < Formula
  desc "Terraform without pain."
  homepage "https://github.com/chanzuckerberg/fogg"
  version "0.92.19"

  on_macos do
    on_intel do
      url "https://github.com/chanzuckerberg/fogg/releases/download/v0.92.19/fogg_0.92.19_darwin_amd64.tar.gz"
      sha256 "bb545b4f099d6022afe0135a8c06eb8d8ff2793e7aeeda4e42600d5ff9488b8e"

      def install
        bin.install "fogg"
      end
    end
    on_arm do
      url "https://github.com/chanzuckerberg/fogg/releases/download/v0.92.19/fogg_0.92.19_darwin_arm64.tar.gz"
      sha256 "c4858fe79b0128fe728441cd60fe8cbf77e838123f13c123984185de859e1e0f"

      def install
        bin.install "fogg"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/chanzuckerberg/fogg/releases/download/v0.92.19/fogg_0.92.19_linux_amd64.tar.gz"
        sha256 "a4593b846e9865e9578bbb91e094c193da7ca1c11316a5dfef51d3959e5bdaca"

        def install
          bin.install "fogg"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/chanzuckerberg/fogg/releases/download/v0.92.19/fogg_0.92.19_linux_arm64.tar.gz"
        sha256 "a9f2e5f70f4cac5e70d6908793be8b400732e300168b0a34254dd7482a224fd9"

        def install
          bin.install "fogg"
        end
      end
    end
  end

  test do
    system "#{bin}/fogg version"
  end
end
