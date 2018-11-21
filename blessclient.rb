class Blessclient < Formula
  desc "SSH without pain."
  homepage "https://github.com/chanzuckerberg/blessclient"
  url "https://github.com/chanzuckerberg/blessclient/releases/download/v0.3.2/blessclient_0.3.2_darwin_amd64.tar.gz"
  version "0.3.2"
  sha256 "3a5e9080914f66b4d57211f1d1484bef7516c7affc25decd8508a707117077e7"

  def install
    bin.install "blessclient"
  end

  test do
    system "#{bin}/blessclient version"
  end
end
