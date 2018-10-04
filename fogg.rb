class Fogg < Formula
  desc "Terraform without pain."
  homepage "https://github.com/chanzuckerberg/fogg"
  url "https://github.com/chanzuckerberg/fogg/releases/download/v0.15.1/fogg_0.15.1_darwin_amd64.tar.gz"
  version "0.15.1"
  sha256 "5c8cb9f206964e569d78a5d4eb37b54fb68165d7b2c386e99cc2b511fababfe5"

  def install
    bin.install "fogg"
  end

  test do
    system "#{bin}/fogg version"
  end
end
