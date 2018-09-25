class Blessclient < Formula
  desc "SSH without pain."
  homepage "https://github.com/chanzuckerberg/blessclient"
  url "https://github.com/chanzuckerberg/blessclient/releases/download/v0.1.1/blessclient_0.1.1_darwin_amd64.tar.gz"
  version "0.1.1"
  sha256 "798b8ed619d95b5637e5ed561ff7515cecc3735d3b8643f23eb2dbc500b73bb8"

  def install
    bin.install "blessclient"
  end

  test do
    system "#{bin}/blessclient version"
  end
end
