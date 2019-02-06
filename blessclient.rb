class Blessclient < Formula
  desc "SSH without pain."
  homepage "https://github.com/chanzuckerberg/blessclient"
  url "https://github.com/chanzuckerberg/blessclient/releases/download/v0.3.15/blessclient_0.3.15_darwin_amd64.tar.gz"
  version "0.3.15"
  sha256 "01fd1a7c21059a77745301a619a5617039ce16404c9d80504984af8dc2650dc2"

  def install
    bin.install "blessclient"
  end

  test do
    system "#{bin}/blessclient version"
  end
end
