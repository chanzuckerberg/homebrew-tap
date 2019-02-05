class Blessclient < Formula
  desc "SSH without pain."
  homepage "https://github.com/chanzuckerberg/blessclient"
  url "https://github.com/chanzuckerberg/blessclient/releases/download/v0.3.13/blessclient_0.3.13_darwin_amd64.tar.gz"
  version "0.3.13"
  sha256 "2aa691138edc4132c668655124db1eb10c8e1ab976a74e6e340b4604b5634fb6"

  def install
    bin.install "blessclient"
  end

  test do
    system "#{bin}/blessclient version"
  end
end
