class Blessclient < Formula
  desc "SSH without pain."
  homepage "https://github.com/chanzuckerberg/blessclient"
  url "https://github.com/chanzuckerberg/blessclient/releases/download/v0.0.5/blessclient_0.0.5_darwin_amd64.tar.gz"
  version "0.0.5"
  sha256 "22a1465d2dea7b4372f0f020a395152e2c1d88ff13770deeb9c21086de42f893"

  def install
    bin.install "blessclient"
  end

  test do
    system "#{bin}/blessclient version"
  end
end
