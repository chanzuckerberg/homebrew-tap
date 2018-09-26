class Blessclient < Formula
  desc "SSH without pain."
  homepage "https://github.com/chanzuckerberg/blessclient"
  url "https://github.com/chanzuckerberg/blessclient/releases/download/v0.2.0/blessclient_0.2.0_darwin_amd64.tar.gz"
  version "0.2.0"
  sha256 "a43745506d7403c2119aa4b1e49c06db18c9df55d6d4e9900deb0dafd9682c65"

  def install
    bin.install "blessclient"
  end

  test do
    system "#{bin}/blessclient version"
  end
end
