# This file was generated by GoReleaser. DO NOT EDIT.
class Fogg < Formula
  desc "Terraform without pain."
  homepage "https://github.com/chanzuckerberg/fogg"
  version "0.56.2"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/chanzuckerberg/fogg/releases/download/v0.56.2/fogg_0.56.2_darwin_amd64.tar.gz"
    sha256 "864a0ed9d4587c05cb423fb2762aa0d3db7de79e522bd0cd7632ce4cfbf0cc4b"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/fogg/releases/download/v0.56.2/fogg_0.56.2_linux_amd64.tar.gz"
      sha256 "ac5da4364746e84b52bd4837ffe125c945653fa785084713305c0dd83c9eab69"
    end
  end

  def install
    bin.install "fogg"
  end

  test do
    system "#{bin}/fogg version"
  end
end
