class Fogg < Formula
  desc "Terraform without pain."
  homepage "https://github.com/chanzuckerberg/fogg"
  url "https://github.com/chanzuckerberg/fogg/releases/download/v0.19.1/fogg_0.19.1_darwin_amd64.tar.gz"
  version "0.19.1"
  sha256 "9fd26e3a30c936c2867598b374a2f43e5f47f15b04ddbb18c292efc2338cb081"

  def install
    bin.install "fogg"
  end

  test do
    system "#{bin}/fogg version"
  end
end
