class Fogg < Formula
  desc "Terraform without pain."
  homepage "https://github.com/chanzuckerberg/fogg"
  url "https://github.com/chanzuckerberg/fogg/releases/download/v0.17.0/fogg_0.17.0_darwin_amd64.tar.gz"
  version "0.17.0"
  sha256 "a832c02da5c3a5e9c7cfbeef3558f3e6e265fa8355ea75601704f84e524d16d4"

  def install
    bin.install "fogg"
  end

  test do
    system "#{bin}/fogg version"
  end
end
