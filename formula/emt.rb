require "formula"

class Emt < Formula
  desc "Enhanced Mule Tools CLI"
  homepage "https://www.enhanced-mule.com"
  url "https://repo1.maven.org/maven2/com/aeontronix/enhanced-mule/enhanced-mule-tools-cli/1.4.13/enhanced-mule-tools-cli-1.4.13-dist.tbz2"
  sha256 "b299f1b07cbe7bc1f5e61eef89346f26229122731591074034828c0dbba4e53d"
  head "https://github.com/enhanced-mule/homebrew-tools.git"

  def install
    libexec.install "bin", "lib", "README.md"
    bin.write_exec_script libexec/"bin/emt"
  end
    test do
      assert_match "1.4.13", shell_output("#{bin}/emt -V", 2)
    end
end
