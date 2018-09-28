class Blessclient < Formula
  desc "SSH without pain."
  homepage "https://github.com/chanzuckerberg/blessclient"
  url "https://github.com/chanzuckerberg/blessclient/releases/download/v0.2.1/blessclient_0.2.1_darwin_amd64.tar.gz"
  version "0.2.1"
  sha256 "4a554727190080eebb0fa3e912103eb015450b32cde4db0c79fea6c2f805616f"

  def install
    bin.install "blessclient"
  end

  test do
    system "#{bin}/blessclient version"
  end
end
