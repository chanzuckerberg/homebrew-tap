class Blessclient < Formula
  desc "SSH without pain."
  homepage "https://github.com/chanzuckerberg/blessclient"
  url "https://github.com/chanzuckerberg/blessclient/releases/download/v0.2.8/blessclient_0.2.8_darwin_amd64.tar.gz"
  version "0.2.8"
  sha256 "7e506a26b002a3cf44fdde5113e6a8728c0eab879b04adf02d6473a14a1047dc"

  def install
    bin.install "blessclient"
  end

  test do
    system "#{bin}/blessclient version"
  end
end
