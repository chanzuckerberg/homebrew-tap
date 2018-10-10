class Fogg < Formula
  desc "Terraform without pain."
  homepage "https://github.com/chanzuckerberg/fogg"
  url "https://github.com/chanzuckerberg/fogg/releases/download/v0.15.3/fogg_0.15.3_darwin_amd64.tar.gz"
  version "0.15.3"
  sha256 "e36bbb7060022b6cae3f01c217c72e48ff0d39629bec49ea023f1e11ce0bac8d"

  def install
    bin.install "fogg"
  end

  test do
    system "#{bin}/fogg version"
  end
end
