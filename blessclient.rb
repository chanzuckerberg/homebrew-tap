class Blessclient < Formula
  desc "SSH without pain."
  homepage "https://github.com/chanzuckerberg/blessclient"
  url "https://github.com/chanzuckerberg/blessclient/releases/download/v0.3.6/blessclient_0.3.6_darwin_amd64.tar.gz"
  version "0.3.6"
  sha256 "7f7d8f4240b90d0dc18c3a746d90620eb07f85c1128ba9eccdf2982ddd741fe0"

  def install
    bin.install "blessclient"
  end

  test do
    system "#{bin}/blessclient version"
  end
end
