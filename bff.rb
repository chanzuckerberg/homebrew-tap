class Bff < Formula
  desc "Breaking, Feature, Fix - a tool for managing semantic versioning"
  homepage "https://github.com/chanzuckerberg/bff"
  url "https://github.com/chanzuckerberg/bff/releases/download/v0.1.3/bff_0.1.3_darwin_amd64.tar.gz"
  version "0.1.3"
  sha256 "09c68dcf3ee204841386a414336cdb903d6f9270441a63d6e37616fc2449e6a8"

  def install
    bin.install "bff"
  end

  test do
    system "#{bin}/bff version"
  end
end
