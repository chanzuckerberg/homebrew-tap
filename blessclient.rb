class Blessclient < Formula
  desc "SSH without pain."
  homepage "https://github.com/chanzuckerberg/blessclient"
  url "https://github.com/chanzuckerberg/blessclient/releases/download/v0.4.3/blessclient_0.4.3_darwin_amd64.tar.gz"
  version "0.4.3"
  sha256 "7872aecdcd8ffae6e25909d042993d805803bba1c80546f20d6f85808a915b2c"

  def install
    bin.install "blessclient"
  end

  test do
    system "#{bin}/blessclient version"
  end
end
