class Fogg < Formula
  desc "Terraform without pain."
  homepage "https://github.com/chanzuckerberg/fogg"
  url "https://github.com/chanzuckerberg/fogg/releases/download/v0.19.2/fogg_0.19.2_darwin_amd64.tar.gz"
  version "0.19.2"
  sha256 "903f670e004500e53ec624410595362af17773f78b78e879c37511f69c96613a"

  def install
    bin.install "fogg"
  end

  test do
    system "#{bin}/fogg version"
  end
end
