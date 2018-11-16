class Blessclient < Formula
  desc "SSH without pain."
  homepage "https://github.com/chanzuckerberg/blessclient"
  url "https://github.com/chanzuckerberg/blessclient/releases/download/v0.3.1/blessclient_0.3.1_darwin_amd64.tar.gz"
  version "0.3.1"
  sha256 "3b235b9409cb712e0fa4fa971eb98bc9a58049eb17bd489e494e30486f58a8b3"

  def install
    bin.install "blessclient"
  end

  test do
    system "#{bin}/blessclient version"
  end
end
