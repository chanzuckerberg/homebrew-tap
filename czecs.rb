class Czecs < Formula
  desc "ECS release management tool."
  homepage "https://github.com/chanzuckerberg/czecs"
  url "https://github.com/chanzuckerberg/czecs/releases/download/v0.1.0-rc2/czecs_0.1.0-rc2_darwin_amd64.tar.gz"
  version "0.1.0-rc2"
  sha256 "91a2b71235b63a75a50ce2eafaa8349b59239ca8c7fc02cd8e458af038e49405"

  def install
    bin.install "czecs"
  end

  test do
    system "#{bin}/czecs version"
  end
end
