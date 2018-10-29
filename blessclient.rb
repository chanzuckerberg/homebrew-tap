class Blessclient < Formula
  desc "SSH without pain."
  homepage "https://github.com/chanzuckerberg/blessclient"
  url "https://github.com/chanzuckerberg/blessclient/releases/download/v0.2.10/blessclient_0.2.10_darwin_amd64.tar.gz"
  version "0.2.10"
  sha256 "3f213064bff59b50a25583701e8cabaada19972d7a07a387fb0d7ef67a83ee3a"

  def install
    bin.install "blessclient"
  end

  test do
    system "#{bin}/blessclient version"
  end
end
