class Blessclient < Formula
  desc "SSH without pain."
  homepage "https://github.com/chanzuckerberg/blessclient"
  url "https://github.com/chanzuckerberg/blessclient/releases/download/v0.3.9/blessclient_0.3.9_darwin_amd64.tar.gz"
  version "0.3.9"
  sha256 "13b955b0f137584503c448172a532388fedcbe525937965ab7e0020546203715"

  def install
    bin.install "blessclient"
  end

  test do
    system "#{bin}/blessclient version"
  end
end
