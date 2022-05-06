# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Happy < Formula
  desc "A command line tool for happy path."
  homepage "https://github.com/chanzuckerberg/happy"
  version "0.17.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.17.1/happy_0.17.1_darwin_arm64.tar.gz"
      sha256 "d8a28cce03398f8a9d0631cfc8dd5d9b4a29e4684b3edd6b6eaf16215f7b065b"

      def install
        bin.install "happy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.17.1/happy_0.17.1_darwin_amd64.tar.gz"
      sha256 "822dc6379962e32805bf9e918e28f34a5deb3a6fe473a4d8c27a1d7e6c9bef39"

      def install
        bin.install "happy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.17.1/happy_0.17.1_linux_arm64.tar.gz"
      sha256 "6c3375f5edf74e474c0130c498b5608b3c94a322f87d9d19522b533e70ee0a50"

      def install
        bin.install "happy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.17.1/happy_0.17.1_linux_amd64.tar.gz"
      sha256 "0c1fd8af648c2a14a657b8358504b3ea87ba405bb6a9cba61fe643ac23546601"

      def install
        bin.install "happy"
      end
    end
  end

  test do
    system "#{bin}/happy"
  end
end
