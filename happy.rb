# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Happy < Formula
  desc "A command line tool for happy path."
  homepage "https://github.com/chanzuckerberg/happy"
  version "0.61.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.61.0/happy_0.61.0_darwin_arm64.tar.gz"
      sha256 "1818223dbba38851d2825268e96da1506663d7c7bd943582cbd193423503fa93"

      def install
        bin.install "happy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.61.0/happy_0.61.0_darwin_amd64.tar.gz"
      sha256 "eec97af38241ec57a8e69063ce6ee3f8dbbeee04ded305a387fbde8cf1f69f33"

      def install
        bin.install "happy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.61.0/happy_0.61.0_linux_arm64.tar.gz"
      sha256 "abd3902eaf799bb22dffed127001a42dd70eea4b3a3cc906bece90f747b0949e"

      def install
        bin.install "happy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.61.0/happy_0.61.0_linux_amd64.tar.gz"
      sha256 "39331e1ecb8c0f1bef149826f3fcc58482c0d6eb66c59bec62078e64a7c6abe5"

      def install
        bin.install "happy"
      end
    end
  end

  test do
    system "#{bin}/happy"
  end
end
