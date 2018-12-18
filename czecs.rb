class Czecs < Formula
  desc "ECS release management tool."
  homepage "https://github.com/chanzuckerberg/czecs"
  url "https://github.com/chanzuckerberg/czecs/releases/download/v0.1.2/czecs_0.1.2_darwin_amd64.tar.gz"
  version "0.1.2"
  sha256 "c4c511df8b12fa8efe6ab6ba3d9e33ea13ad09c4f2a004f6aa56d59f7c17c5e7"

  def install
    bin.install "czecs"
  end

  test do
    system "#{bin}/czecs version"
  end
end
