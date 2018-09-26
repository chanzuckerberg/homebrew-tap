class Czecs < Formula
  desc "ECS release management tool."
  homepage "https://github.com/chanzuckerberg/czecs"
  url "https://github.com/chanzuckerberg/czecs/releases/download/v0.1.0-rc1/czecs_0.1.0-rc1_darwin_amd64.tar.gz"
  version "0.1.0-rc1"
  sha256 "683cfa3049cf850c059cf8af2dcc16869b77a250c34cca2725cc75a230c7e00e"

  def install
    bin.install "czecs"
  end

  test do
    system "#{bin}/czecs version"
  end
end
