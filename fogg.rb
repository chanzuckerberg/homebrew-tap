class Fogg < Formula
  desc "Terraform without pain."
  homepage "https://github.com/chanzuckerberg/fogg"
  url "https://github.com/chanzuckerberg/fogg/releases/download/v0.16.4/fogg_0.16.4_darwin_amd64.tar.gz"
  version "0.16.4"
  sha256 "68912d8f091d32876e7d3c65acafa3e1ab95de9b873a9f07e70bfe099e9570fa"

  def install
    bin.install "fogg"
  end

  test do
    system "#{bin}/fogg version"
  end
end
