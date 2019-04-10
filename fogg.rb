class Fogg < Formula
  desc "Terraform without pain."
  homepage "https://github.com/chanzuckerberg/fogg"
  url "https://github.com/chanzuckerberg/fogg/releases/download/v0.19.0/fogg_0.19.0_darwin_amd64.tar.gz"
  version "0.19.0"
  sha256 "d89225426332f57c791ab6b0ebed021c991d5f6b9042d7a0227a2bf9fd432fe9"

  def install
    bin.install "fogg"
  end

  test do
    system "#{bin}/fogg version"
  end
end
