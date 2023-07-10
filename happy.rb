# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Happy < Formula
  desc "A command line tool for happy path."
  homepage "https://github.com/chanzuckerberg/happy"
  version "0.92.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.92.0/happy_0.92.0_darwin_arm64.tar.gz"
      sha256 "622b96029d8546a9ec1ae9965a886d6ff37c8ab5628d8273c97bf4a19a3f99a3"

      def install
        bin.install "happy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.92.0/happy_0.92.0_darwin_amd64.tar.gz"
      sha256 "2051b8e9a1043b9626c0e49ddd2fcce6a8d35158b2d7419abab64363d233f31d"

      def install
        bin.install "happy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.92.0/happy_0.92.0_linux_arm64.tar.gz"
      sha256 "cf539b9af12ade4f018cbbc7170ba76b679ededc00d3cc0f98906f25f672ac3f"

      def install
        bin.install "happy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.92.0/happy_0.92.0_linux_amd64.tar.gz"
      sha256 "80d57a371e64bcd157cef5dfea38c828eea7182a134eda6db2ba8fcdd66bce1b"

      def install
        bin.install "happy"
      end
    end
  end

  test do
    system "#{bin}/happy"
  end
end
