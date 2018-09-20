class Blessclient < Formula
  desc "SSH without pain."
  homepage "https://github.com/chanzuckerberg/blessclient"
  url "https://github.com/chanzuckerberg/blessclient/releases/download/v0.0.3/blessclient_0.0.3_darwin_amd64.tar.gz"
  version "0.0.3"
  sha256 "75750393ad087218775575411c30dcfededa7ed36ad11e34eafddfd5e18fc079"

  def install
    bin.install "blessclient"
  end

  test do
    system "#{bin}/blessclient version"
  end
end
