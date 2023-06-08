require "formula"

class Emt < Formula
  desc "Enhanced Mule Tools CLI"
  homepage "https://www.enhanced-mule.com"
  url "https://repo1.maven.org/maven2/com/aeontronix/enhanced-mule/enhanced-mule-tools-cli/1.4.56/enhanced-mule-tools-cli-1.4.56-dist.tbz2"
  sha256 "15cc7a1fafcce84d72b818cc58eb757218af3a8001e8a8885e8d458920b0648d"
  head "https://github.com/enhanced-mule/homebrew-tools.git"

  def install
    libexec.install "bin", "lib", "README.md"
    bin.write_exec_script libexec/"bin/emt"
  end
    test do
      assert_match "1.4.56", shell_output("#{bin}/emt -V", 2)
    end
end
