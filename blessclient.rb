class Blessclient < Formula
  desc "SSH without pain."
  homepage "https://github.com/chanzuckerberg/blessclient"
  url "https://github.com/chanzuckerberg/blessclient/releases/download/v0.2.6/blessclient_0.2.6_darwin_amd64.tar.gz"
  version "0.2.6"
  sha256 "1ee0ee9cbdb16ec9374840cad9510229b342da52b0885c5078728ead6a5798b2"

  def install
    bin.install "blessclient"
  end

  test do
    system "#{bin}/blessclient version"
  end
end
