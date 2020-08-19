# This file was generated by GoReleaser. DO NOT EDIT.
class S3parcp < Formula
  desc "Copy large files to, from, and between s3 buckets with parallelism"
  homepage "https://github.com/chanzuckerberg/s3parcp"
  version "0.2.1-test-17"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/chanzuckerberg/s3parcp/releases/download/v0.2.1-test-17/s3parcp_0.2.1-test-17_Darwin_x86_64.tar.gz"
    sha256 "ba01b09a110fc63c83c7feb140452d10e19872351039156fee9698e32fabff5c"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/s3parcp/releases/download/v0.2.1-test-17/s3parcp_0.2.1-test-17_Linux_x86_64.tar.gz"
      sha256 "bbefaee7b797e629d0063204572d939ab76e90e2b54ea9125c5b254fef4ebdad"
    end
  end

  def install
    bin.install "s3parcp" |
    include.install "utils.bash" |
    bash_completion.install "completions/bash => "s3parcp"
  end

  test do
    system "#{bin}/s3parcp --version"
  end
end
