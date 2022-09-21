# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Happy < Formula
  desc "A command line tool for happy path."
  homepage "https://github.com/chanzuckerberg/happy"
  version "0.30.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.30.0/happy_0.30.0_darwin_arm64.tar.gz"
      sha256 "2b13f3e41a95b00538969a093fe3271670547ca80cea544c528db33702b4836a"

      def install
        bin.install "happy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.30.0/happy_0.30.0_darwin_amd64.tar.gz"
      sha256 "094673db081ac9d04990f94dc0257eff9f8572cdc3e50fa576ae8c6662824b18"

      def install
        bin.install "happy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.30.0/happy_0.30.0_linux_arm64.tar.gz"
      sha256 "6c384390d3aa245746e74c1cfdad5b3706a67e4844418def39004738c00932f7"

      def install
        bin.install "happy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.30.0/happy_0.30.0_linux_amd64.tar.gz"
      sha256 "b3a1367956acd591790068af7d4e2f80376b47b599e3b15298a75e3907f1414d"

      def install
        bin.install "happy"
      end
    end
  end

  test do
    system "#{bin}/happy"
  end
end
