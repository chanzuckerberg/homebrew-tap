class Fogg < Formula
  desc "Terraform without pain."
  homepage "https://github.com/chanzuckerberg/fogg"
  url "https://github.com/chanzuckerberg/fogg/releases/download/v0.15.2/fogg_0.15.2_darwin_amd64.tar.gz"
  version "0.15.2"
  sha256 "644c007fd40748f08e94a8ea9470088c671ec92b5537decac8eaea1717cfc976"

  def install
    bin.install "fogg"
  end

  test do
    system "#{bin}/fogg version"
  end
end
