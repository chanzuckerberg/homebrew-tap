class Fogg < Formula
  desc "Terraform without pain."
  homepage "https://github.com/chanzuckerberg/fogg"
  url "https://github.com/chanzuckerberg/fogg/releases/download/v0.16.1/fogg_0.16.1_darwin_amd64.tar.gz"
  version "0.16.1"
  sha256 "47f2b0e71b5596434093835f7c9135041a7464b019eb6b3c8dd3f8e1d9737917"

  def install
    bin.install "fogg"
  end

  test do
    system "#{bin}/fogg version"
  end
end
