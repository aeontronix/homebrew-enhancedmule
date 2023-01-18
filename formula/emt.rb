require "formula"

class Emt < Formula
  desc "Enhanced Mule Tools CLI"
  homepage "https://www.enhanced-mule.com"
  url "https://repo1.maven.org/maven2/com/aeontronix/enhanced-mule/enhanced-mule-tools-cli/1.4.22/enhanced-mule-tools-cli-1.4.22-dist.tbz2"
  sha256 "95e8268d90162fbaeda3f5f23563e52b7d18805abab2853d297247f31877d9eb"
  head "https://github.com/enhanced-mule/homebrew-tools.git"

  def install
    libexec.install "bin", "lib", "README.md"
    bin.write_exec_script libexec/"bin/emt"
  end
    test do
      assert_match "1.4.22", shell_output("#{bin}/emt -V", 2)
    end
end
