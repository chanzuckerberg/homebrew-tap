class Blessclient < Formula
  desc "SSH without pain."
  homepage "https://github.com/chanzuckerberg/blessclient"
  url "https://github.com/chanzuckerberg/blessclient/releases/download/v0.4.2/blessclient_0.4.2_darwin_amd64.tar.gz"
  version "0.4.2"
  sha256 "f586a0c35739ec37fc3ca4935c1e8e9b9ea54e9da91e28c35c49a99d0f45cff2"

  def install
    bin.install "blessclient"
  end

  test do
    system "#{bin}/blessclient version"
  end
end
