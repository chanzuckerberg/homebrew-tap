# This file was generated by GoReleaser. DO NOT EDIT.
class Bff < Formula
  desc "Breaking, Feature, Fix - a tool for managing semantic versioning"
  homepage "https://github.com/chanzuckerberg/bff"
  url "https://github.com/chanzuckerberg/bff/releases/download/v0.1.4/bff_0.1.4_darwin_amd64.tar.gz"
  version "0.1.4"
  sha256 "ad54df83b3b02abbe7613f7ceedb5d017b57f15e02fdb4409c9229a34334faa8"

  def install
    bin.install "bff"
  end

  test do
    system "#{bin}/bff version"
  end
end