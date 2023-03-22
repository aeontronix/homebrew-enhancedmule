require "formula"

class Emt < Formula
  desc "Enhanced Mule Tools CLI"
  homepage "https://www.enhanced-mule.com"
  url "https://repo1.maven.org/maven2/com/aeontronix/enhanced-mule/enhanced-mule-tools-cli/1.4.41/enhanced-mule-tools-cli-1.4.41-dist.tbz2"
  sha256 "7c30f1c048b7b56ba99ece4f15f44a88be94a8163bdd8f381f23592fa99c3242"
  head "https://github.com/enhanced-mule/homebrew-tools.git"

  def install
    libexec.install "bin", "lib", "README.md"
    bin.write_exec_script libexec/"bin/emt"
  end
    test do
      assert_match "1.4.41", shell_output("#{bin}/emt -V", 2)
    end
end
