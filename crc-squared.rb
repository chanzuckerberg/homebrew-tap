# This file was generated by GoReleaser. DO NOT EDIT.
class CrcSquared < Formula
  desc "Copy large files to, from, and between s3 buckets with parallelism"
  homepage "https://github.com/chanzuckerberg/crc-squared"
  version "0.0.2"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/chanzuckerberg/crc-squared/releases/download/v0.0.2/crc-squared_0.0.2_darwin_amd64.tar.gz"
    sha256 "8e6b5ca1d39e155dc8a1f57e692ead66485a259a4e2e9a09a8b1eca3ec16acce"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/crc-squared/releases/download/v0.0.2/crc-squared_0.0.2_linux_amd64.tar.gz"
      sha256 "cabcf315bc5eba16692e1d606ba32ae8b81f7c09e65eecc89eac526998298407"
    end
  end

  def install
    bin.install "crc-squared"
    bash_completion.install "completions/bash" => "crc-squared"
    zsh_completion.install "completions/zsh" => "_crc-squared"
  end

  test do
    system "#{bin}/crc-squared --version"
  end
end
