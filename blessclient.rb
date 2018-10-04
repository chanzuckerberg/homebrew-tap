class Blessclient < Formula
  desc "SSH without pain."
  homepage "https://github.com/chanzuckerberg/blessclient"
  url "https://github.com/chanzuckerberg/blessclient/releases/download/v0.2.3/blessclient_0.2.3_darwin_amd64.tar.gz"
  version "0.2.3"
  sha256 "5607f41ad340f87a9be03a43a945e820a31448e38ffaa79cfcd030fc83c97ec0"

  def install
    bin.install "blessclient"
  end

  test do
    system "#{bin}/blessclient version"
  end
end
