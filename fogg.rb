class Fogg < Formula
  desc "Terraform without pain."
  homepage "https://github.com/chanzuckerberg/fogg"
  url "https://github.com/chanzuckerberg/fogg/releases/download/v0.18.1/fogg_0.18.1_darwin_amd64.tar.gz"
  version "0.18.1"
  sha256 "c95b0939a84497f4ff1111383764bfd35a5c241e39c963541777c15c13900f6a"

  def install
    bin.install "fogg"
  end

  test do
    system "#{bin}/fogg version"
  end
end
