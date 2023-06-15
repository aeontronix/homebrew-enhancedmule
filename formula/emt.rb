require "formula"

class Emt < Formula
  desc "Enhanced Mule Tools CLI"
  homepage "https://www.enhanced-mule.com"
  url "https://repo1.maven.org/maven2/com/aeontronix/enhanced-mule/enhanced-mule-tools-cli/1.4.61/enhanced-mule-tools-cli-1.4.61-dist.tbz2"
  sha256 "8d6048252b04ebf0ceb73424026c9ee182aa04709869d3bf08a72fc22d85e834"
  head "https://github.com/enhanced-mule/homebrew-tools.git"

  def install
    libexec.install "bin", "lib", "README.md"
    bin.write_exec_script libexec/"bin/emt"
  end
    test do
      assert_match "1.4.61", shell_output("#{bin}/emt -V", 2)
    end
end
