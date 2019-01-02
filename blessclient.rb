class Blessclient < Formula
  desc "SSH without pain."
  homepage "https://github.com/chanzuckerberg/blessclient"
  url "https://github.com/chanzuckerberg/blessclient/releases/download/v0.3.8/blessclient_0.3.8_darwin_amd64.tar.gz"
  version "0.3.8"
  sha256 "d2c8fb4053991ab67f80dcbe24cc6f972055a5a5e8a5532c3b4c0931bce4eadf"

  def install
    bin.install "blessclient"
  end

  test do
    system "#{bin}/blessclient version"
  end
end
