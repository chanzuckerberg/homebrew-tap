class Blessclient < Formula
  desc "SSH without pain."
  homepage "https://github.com/chanzuckerberg/blessclient"
  url "https://github.com/chanzuckerberg/blessclient/releases/download/v0.1.0/blessclient_0.1.0_darwin_amd64.tar.gz"
  version "0.1.0"
  sha256 "4e73aae00d1f8f996e37379c048956f029fbbc8922eec801580c580ad3f347ec"

  def install
    bin.install "blessclient"
  end

  test do
    system "#{bin}/blessclient version"
  end
end
