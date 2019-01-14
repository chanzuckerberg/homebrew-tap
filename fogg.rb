class Fogg < Formula
  desc "Terraform without pain."
  homepage "https://github.com/chanzuckerberg/fogg"
  url "https://github.com/chanzuckerberg/fogg/releases/download/v0.17.0-c8948f0/fogg_0.17.0-c8948f0_darwin_amd64.tar.gz"
  version "0.17.0-c8948f0"
  sha256 "7304aad24631d9de630cc6d12f2b6cd96338fb2d61189598634e1a393e74526f"

  def install
    bin.install "fogg"
  end

  test do
    system "#{bin}/fogg version"
  end
end
