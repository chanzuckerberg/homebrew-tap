class Fogg < Formula
  desc "Terraform without pain."
  homepage "https://github.com/chanzuckerberg/fogg"
  url "https://github.com/chanzuckerberg/fogg/releases/download/v0.19.5/fogg_0.19.5_darwin_amd64.tar.gz"
  version "0.19.5"
  sha256 "8252142c19d2de6ef2921b3846492179749dfc1c4ba568030977c45638870a47"

  def install
    bin.install "fogg"
  end

  test do
    system "#{bin}/fogg version"
  end
end
