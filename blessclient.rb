class Blessclient < Formula
  desc "SSH without pain."
  homepage "https://github.com/chanzuckerberg/blessclient"
  url "https://github.com/chanzuckerberg/blessclient/releases/download/v0.2.2/blessclient_0.2.2_darwin_amd64.tar.gz"
  version "0.2.2"
  sha256 "32343cd20d377cb41b587cd7cbdea4600e1d5bb3ffcd3fae7efaad3025499f95"

  def install
    bin.install "blessclient"
  end

  test do
    system "#{bin}/blessclient version"
  end
end
