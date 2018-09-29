class Czecs < Formula
  desc "ECS release management tool."
  homepage "https://github.com/chanzuckerberg/czecs"
  url "https://github.com/chanzuckerberg/czecs/releases/download/v0.1.0/czecs_0.1.0_darwin_amd64.tar.gz"
  version "0.1.0"
  sha256 "739e69d6df37654a1a6d37174adeee0ae73ebc39e82658d874d35afbbc097214"

  def install
    bin.install "czecs"
  end

  test do
    system "#{bin}/czecs version"
  end
end
