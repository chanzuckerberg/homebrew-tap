class Blessclient < Formula
  desc "SSH without pain."
  homepage "https://github.com/chanzuckerberg/blessclient"
  url "https://github.com/chanzuckerberg/blessclient/releases/download/v0.0.2/blessclient_0.0.2_darwin_amd64.tar.gz"
  version "0.0.2"
  sha256 "2e28137eea5faef1d6dd56ab614aa71b5ca3e62a4ee9bba02f453f9638dcbbcd"

  def install
    bin.install "blessclient"
  end

  test do
    system "#{bin}/blessclient version"
  end
end
