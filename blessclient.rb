class Blessclient < Formula
  desc "SSH without pain."
  homepage "https://github.com/chanzuckerberg/blessclient"
  url "https://github.com/chanzuckerberg/blessclient/releases/download/v0.4.0/blessclient_0.4.0_darwin_amd64.tar.gz"
  version "0.4.0"
  sha256 "a34a1e24b622cadc26b43bc36054a6285ea0bbb45eb20b588663866f0874ff75"

  def install
    bin.install "blessclient"
  end

  test do
    system "#{bin}/blessclient version"
  end
end
