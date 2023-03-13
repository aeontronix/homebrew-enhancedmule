require "formula"

class Emt < Formula
  desc "Enhanced Mule Tools CLI"
  homepage "https://www.enhanced-mule.com"
  url "https://repo1.maven.org/maven2/com/aeontronix/enhanced-mule/enhanced-mule-tools-cli/1.4.30/enhanced-mule-tools-cli-1.4.30-dist.tbz2"
  sha256 "9ee6db05790188239a124b9cd941f19543481f67660b74774c8a9c0ef9520278"
  head "https://github.com/enhanced-mule/homebrew-tools.git"

  def install
    libexec.install "bin", "lib", "README.md"
    bin.write_exec_script libexec/"bin/emt"
  end
    test do
      assert_match "1.4.30", shell_output("#{bin}/emt -V", 2)
    end
end
