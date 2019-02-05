class Fogg < Formula
  desc "Terraform without pain."
  homepage "https://github.com/chanzuckerberg/fogg"
  url "https://github.com/chanzuckerberg/fogg/releases/download/v0.18.0/fogg_0.18.0_darwin_amd64.tar.gz"
  version "0.18.0"
  sha256 "c4955e803aa2127b5f48a0f25fb9a1b442387f74f029f2fd2a8f4252b40cb0cf"

  def install
    bin.install "fogg"
  end

  test do
    system "#{bin}/fogg version"
  end
end
