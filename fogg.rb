class Fogg < Formula
  desc "Terraform without pain."
  homepage "https://github.com/chanzuckerberg/fogg"
  url "https://github.com/chanzuckerberg/fogg/releases/download/v0.19.7/fogg_0.19.7_darwin_amd64.tar.gz"
  version "0.19.7"
  sha256 "5ba83a4733ca60ed8b4d5bd3756e91afc052348ea621cd441fb356972bed6232"

  def install
    bin.install "fogg"
  end

  test do
    system "#{bin}/fogg version"
  end
end
