class Blessclient < Formula
  desc "SSH without pain."
  homepage "https://github.com/chanzuckerberg/blessclient"
  url "https://github.com/chanzuckerberg/blessclient/releases/download/v0.0.1/blessclient_0.0.1_darwin_amd64.tar.gz"
  version "0.0.1"
  sha256 "2b1081c80d9126544186371770272a0c9711912efde21af69e627a2f2a0563a6"

  def install
    bin.install "blessclient"
  end

  test do
    system "#{bin}/blessclient version"
  end
end
