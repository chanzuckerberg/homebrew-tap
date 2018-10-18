class Blessclient < Formula
  desc "SSH without pain."
  homepage "https://github.com/chanzuckerberg/blessclient"
  url "https://github.com/chanzuckerberg/blessclient/releases/download/v0.2.9/blessclient_0.2.9_darwin_amd64.tar.gz"
  version "0.2.9"
  sha256 "5ff9f6dd44fe20b0ce53053f1be0b2933e906524dc47e588ff86057fc581b821"

  def install
    bin.install "blessclient"
  end

  test do
    system "#{bin}/blessclient version"
  end
end
