class Blessclient < Formula
  desc "SSH without pain."
  homepage "https://github.com/chanzuckerberg/blessclient"
  url "https://github.com/chanzuckerberg/blessclient/releases/download/v0.0.6/blessclient_0.0.6_darwin_amd64.tar.gz"
  version "0.0.6"
  sha256 "18e889d7984419eb0b01043f702e2982a9e5590d57ecf4c460f6ef6cedf91213"

  def install
    bin.install "blessclient"
  end

  test do
    system "#{bin}/blessclient version"
  end
end
