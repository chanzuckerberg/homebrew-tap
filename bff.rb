class Bff < Formula
  desc "Breaking, Feature, Fix - a tool for managing semantic versioning"
  homepage "https://github.com/chanzuckerberg/bff"
  url "https://github.com/chanzuckerberg/bff/releases/download/v0.1.1/bff_0.1.1_darwin_amd64.tar.gz"
  version "0.1.1"
  sha256 "b5e782dcf5416eb1040a2c49cd3d2bace297f9929f7c3aaad24b0eacae67aec5"

  def install
    bin.install "bff"
  end

  test do
    system "#{bin}/bff version"
  end
end
