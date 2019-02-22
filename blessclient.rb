class Blessclient < Formula
  desc "SSH without pain."
  homepage "https://github.com/chanzuckerberg/blessclient"
  url "https://github.com/chanzuckerberg/blessclient/releases/download/v0.4.1/blessclient_0.4.1_darwin_amd64.tar.gz"
  version "0.4.1"
  sha256 "5581a7df225d2368c95e494b82ce6cb73187165210548f9574748cc25f701250"

  def install
    bin.install "blessclient"
  end

  test do
    system "#{bin}/blessclient version"
  end
end
