class Blessclient < Formula
  desc "SSH without pain."
  homepage "https://github.com/chanzuckerberg/blessclient"
  url "https://github.com/chanzuckerberg/blessclient/releases/download/v0.2.11/blessclient_0.2.11_darwin_amd64.tar.gz"
  version "0.2.11"
  sha256 "dd94a738afe864a841441722c11426590ddcdaf3523d60783411a3635e5f7a05"

  def install
    bin.install "blessclient"
  end

  test do
    system "#{bin}/blessclient version"
  end
end
