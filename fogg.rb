class Fogg < Formula
  desc "Terraform without pain."
  homepage "https://github.com/chanzuckerberg/fogg"
  url "https://github.com/chanzuckerberg/fogg/releases/download/v0.16.3/fogg_0.16.3_darwin_amd64.tar.gz"
  version "0.16.3"
  sha256 "93d329c3d8e8323ad01f26e2b92bffbc033a14b8f76dc4eb229ab3e908fb196d"

  def install
    bin.install "fogg"
  end

  test do
    system "#{bin}/fogg version"
  end
end
