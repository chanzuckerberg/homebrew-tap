class Blessclient < Formula
  desc "SSH without pain."
  homepage "https://github.com/chanzuckerberg/blessclient"
  url "https://github.com/chanzuckerberg/blessclient/releases/download/v0.3.7/blessclient_0.3.7_darwin_amd64.tar.gz"
  version "0.3.7"
  sha256 "77f16849b077406deba85109d868473665912f10be565d12fdae7ede9313b072"

  def install
    bin.install "blessclient"
  end

  test do
    system "#{bin}/blessclient version"
  end
end
