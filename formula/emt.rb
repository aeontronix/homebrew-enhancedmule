require "formula"

class Emt < Formula
  desc "Enhanced Mule Tools CLI"
  homepage "https://www.enhanced-mule.com"
  url "https://repo1.maven.org/maven2/com/aeontronix/enhanced-mule/enhanced-mule-tools-cli/1.4.57/enhanced-mule-tools-cli-1.4.57-dist.tbz2"
  sha256 "a0ce4bae27bea49449392853cacbeddeedafef435db5ba65e0535706ca73c0a1"
  head "https://github.com/enhanced-mule/homebrew-tools.git"

  def install
    libexec.install "bin", "lib", "README.md"
    bin.write_exec_script libexec/"bin/emt"
  end
    test do
      assert_match "1.4.57", shell_output("#{bin}/emt -V", 2)
    end
end
