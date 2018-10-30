class Fogg < Formula
  desc "Terraform without pain."
  homepage "https://github.com/chanzuckerberg/fogg"
  url "https://github.com/chanzuckerberg/fogg/releases/download/v0.16.2/fogg_0.16.2_darwin_amd64.tar.gz"
  version "0.16.2"
  sha256 "a66a8bd89441e77f01920e4c0500704ed9474538d08be86bf06b2beb793bb5dd"

  def install
    bin.install "fogg"
  end

  test do
    system "#{bin}/fogg version"
  end
end
