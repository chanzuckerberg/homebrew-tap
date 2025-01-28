require "fileutils"

class Gcflow < Formula
    desc "GPU Cluster Workflow Management Interface"
    homepage "https://github.com/chanzuckerberg/gcflow"
    version "0.2.0"
    
    on_macos do
        if Hardware::CPU.arm?
            url "https://cluster-tools.ml.prod.si.czi.technology/tools/gcflow_0.2.0_darwin_arm64.tgz", :header => "Authorization: Bearer #{ENV['HOMEBREW_JWT_TOKEN']}"
            sha256 "f35c1f5bbff5e49a39fdb88512b5a4eba1e47ce858f364234796637a1913d415"
    
            def install
                libexec.install Dir["gcflow.dist/*"]
                bin.install_symlink libexec/"gc" => "gc"
            end
        end
    end

    test do
        system "#{bin}/gc", "--help"
    end
end