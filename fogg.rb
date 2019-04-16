class Fogg < Formula
  desc "Terraform without pain."
  homepage "https://github.com/chanzuckerberg/fogg"
  url "https://github.com/chanzuckerberg/fogg/releases/download/v0.19.4/fogg_0.19.4_darwin_amd64.tar.gz"
  version "0.19.4"
  sha256 "8a368e5ea171a512ac24b34afbfe8a05cb84c847544fe96189be0df05540595e"

  def install
    bin.install "fogg"
  end

  test do
    system "#{bin}/fogg version"
  end
end
