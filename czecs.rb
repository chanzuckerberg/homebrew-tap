class Czecs < Formula
  desc "ECS release management tool."
  homepage "https://github.com/chanzuckerberg/czecs"
  url "https://github.com/chanzuckerberg/czecs/releases/download/v0.1.1/czecs_0.1.1_darwin_amd64.tar.gz"
  version "0.1.1"
  sha256 "c125f509a1e3e101c5448e13e81e07d466719dc8677c5058990600bf6b7214a6"

  def install
    bin.install "czecs"
  end

  test do
    system "#{bin}/czecs version"
  end
end
