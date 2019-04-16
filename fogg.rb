class Fogg < Formula
  desc "Terraform without pain."
  homepage "https://github.com/chanzuckerberg/fogg"
  url "https://github.com/chanzuckerberg/fogg/releases/download/v0.19.6/fogg_0.19.6_darwin_amd64.tar.gz"
  version "0.19.6"
  sha256 "822671d8f9710d1d0cbae28e99734c2569523e5426b8e25fc8a51141d928914b"

  def install
    bin.install "fogg"
  end

  test do
    system "#{bin}/fogg version"
  end
end
