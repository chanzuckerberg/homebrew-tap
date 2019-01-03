class Blessclient < Formula
  desc "SSH without pain."
  homepage "https://github.com/chanzuckerberg/blessclient"
  url "https://github.com/chanzuckerberg/blessclient/releases/download/v0.3.11/blessclient_0.3.11_darwin_amd64.tar.gz"
  version "0.3.11"
  sha256 "747acb0927f3740fd3f8ceda492000ec873636b20bd3422175e143a9b669aac1"

  def install
    bin.install "blessclient"
  end

  test do
    system "#{bin}/blessclient version"
  end
end
