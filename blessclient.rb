class Blessclient < Formula
  desc "SSH without pain."
  homepage "https://github.com/chanzuckerberg/blessclient"
  url "https://github.com/chanzuckerberg/blessclient/releases/download/v0.2.5/blessclient_0.2.5_darwin_amd64.tar.gz"
  version "0.2.5"
  sha256 "3702f33970cd190b9658a8acbde880bacee6ee3ecf6bdeedd192c59031e95a7b"

  def install
    bin.install "blessclient"
  end

  test do
    system "#{bin}/blessclient version"
  end
end
