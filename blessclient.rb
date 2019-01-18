class Blessclient < Formula
  desc "SSH without pain."
  homepage "https://github.com/chanzuckerberg/blessclient"
  url "https://github.com/chanzuckerberg/blessclient/releases/download/v0.3.12/blessclient_0.3.12_darwin_amd64.tar.gz"
  version "0.3.12"
  sha256 "167c876ba438e2bf43b25f6624e93e6ce2f62c0f0ebde2cfb4d549f43bec79f8"

  def install
    bin.install "blessclient"
  end

  test do
    system "#{bin}/blessclient version"
  end
end
