# This file was generated by GoReleaser. DO NOT EDIT.
class Fogg < Formula
  desc "Terraform without pain."
  homepage "https://github.com/chanzuckerberg/fogg"
  url "https://github.com/chanzuckerberg/fogg/releases/download/v0.26.2/fogg_0.26.2_darwin_amd64.tar.gz"
  version "0.26.2"
  sha256 "fcf0a8b57f8ed23d65753500f96c3a1dc7ae0bdca8ed229674fd4404bb90a3d4"

  def install
    bin.install "fogg"
  end

  test do
    system "#{bin}/fogg version"
  end
end
