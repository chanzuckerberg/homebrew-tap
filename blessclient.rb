class Blessclient < Formula
  desc "SSH without pain."
  homepage "https://github.com/chanzuckerberg/blessclient"
  url "https://github.com/chanzuckerberg/blessclient/releases/download/v0.3.0/blessclient_0.3.0_darwin_amd64.tar.gz"
  version "0.3.0"
  sha256 "d0d3d44c9d9683fe1d894f3962891d685523b9db26f4eba37c25e7873aed6cba"

  def install
    bin.install "blessclient"
  end

  test do
    system "#{bin}/blessclient version"
  end
end
