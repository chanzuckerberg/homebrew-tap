class Blessclient < Formula
  desc "SSH without pain."
  homepage "https://github.com/chanzuckerberg/blessclient"
  url "https://github.com/chanzuckerberg/blessclient/releases/download/v0.2.4/blessclient_0.2.4_darwin_amd64.tar.gz"
  version "0.2.4"
  sha256 "6b936397ba5050b03817e3fe79eb0fafcacd1e25f70768ee28d0ae5553df2049"

  def install
    bin.install "blessclient"
  end

  test do
    system "#{bin}/blessclient version"
  end
end
