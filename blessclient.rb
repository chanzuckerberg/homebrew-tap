class Blessclient < Formula
  desc "SSH without pain."
  homepage "https://github.com/chanzuckerberg/blessclient"
  url "https://github.com/chanzuckerberg/blessclient/releases/download/v0.2.7/blessclient_0.2.7_darwin_amd64.tar.gz"
  version "0.2.7"
  sha256 "0dcfbd0f1b647bd257e74a9b004cd85b6321a6da4d5b951ca7b6cc7b1bb55a2b"

  def install
    bin.install "blessclient"
  end

  test do
    system "#{bin}/blessclient version"
  end
end
