class Blessclient < Formula
  desc "SSH without pain."
  homepage "https://github.com/chanzuckerberg/blessclient"
  url "https://github.com/chanzuckerberg/blessclient/releases/download/v0.3.10/blessclient_0.3.10_darwin_amd64.tar.gz"
  version "0.3.10"
  sha256 "54b311a8cdb95f47fb3bb42782b00b99d056fbeea22c786e51c88b925d82a483"

  def install
    bin.install "blessclient"
  end

  test do
    system "#{bin}/blessclient version"
  end
end
