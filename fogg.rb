class Fogg < Formula
  desc "Terraform without pain."
  homepage "https://github.com/chanzuckerberg/fogg"
  url "https://github.com/chanzuckerberg/fogg/releases/download/v0.19.3/fogg_0.19.3_darwin_amd64.tar.gz"
  version "0.19.3"
  sha256 "3129d3b86bd1b85b0a538287b05c44ce99ec8a6ae9d0db0269acf4249fec5984"

  def install
    bin.install "fogg"
  end

  test do
    system "#{bin}/fogg version"
  end
end
