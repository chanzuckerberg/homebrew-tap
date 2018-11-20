class Fogg < Formula
  desc "Terraform without pain."
  homepage "https://github.com/chanzuckerberg/fogg"
  url "https://github.com/chanzuckerberg/fogg/releases/download/v0.16.5/fogg_0.16.5_darwin_amd64.tar.gz"
  version "0.16.5"
  sha256 "e2fc2e77daf61726d5a0e885dee95bfba58a33f01be3199cf5b68554a51410f9"

  def install
    bin.install "fogg"
  end

  test do
    system "#{bin}/fogg version"
  end
end
