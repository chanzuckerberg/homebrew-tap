# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Blessclient < Formula
  desc "SSH without pain."
  homepage "https://github.com/chanzuckerberg/blessclient"
  version "1.6.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chanzuckerberg/blessclient/releases/download/v1.6.0/blessclient_1.6.0_darwin_arm64.tar.gz"
      sha256 "76d9e25a6619f0649791fa6360b62e0467fc0ac4eabbdb6d1ed932ba47a5c7a8"

      def install
        bin.install "blessclient"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/blessclient/releases/download/v1.6.0/blessclient_1.6.0_darwin_amd64.tar.gz"
      sha256 "12ea2487f603a9fd475573beafb3baaf43774267fef8b01da877e194eb3bbe8c"

      def install
        bin.install "blessclient"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chanzuckerberg/blessclient/releases/download/v1.6.0/blessclient_1.6.0_linux_arm64.tar.gz"
      sha256 "98ff9f552a51ae82f46dc4b93fae97a47af26b3fedea339777daf3e750625eea"

      def install
        bin.install "blessclient"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/blessclient/releases/download/v1.6.0/blessclient_1.6.0_linux_amd64.tar.gz"
      sha256 "b750d5f8ec4d064a86a3f38fdd53712fd129d9d55e788003896b29629431cb3d"

      def install
        bin.install "blessclient"
      end
    end
  end

  test do
    system "#{bin}/blessclient version"
  end
end
