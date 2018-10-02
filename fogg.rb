class Fogg < Formula
  desc "Terraform without pain."
  homepage "https://github.com/chanzuckerberg/fogg"
  url "https://github.com/chanzuckerberg/fogg/releases/download/v0.15.0/fogg_0.15.0_darwin_amd64.tar.gz"
  version "0.15.0"
  sha256 "8ebc6c11a0fcf8c194fbda2cc28dcb24b9fb7fa5b5c83d69d051cb4ccb54a3b7"

  def install
    bin.install "fogg"
  end

  test do
    system "#{bin}/fogg version"
  end
end
