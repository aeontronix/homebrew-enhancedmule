require "formula"

class Emt < Formula
  desc "Enhanced Mule Tools CLI"
  homepage "https://www.enhanced-mule.com"
  url "https://repo1.maven.org/maven2/com/aeontronix/enhanced-mule/enhanced-mule-tools-cli/1.4.0-beta1/enhanced-mule-tools-cli-1.4.0-beta1-dist.tbz2"
  sha256 "6fa422982c01983a9e9275f0a03cfc37c7572a4dffaa9e2d91503d3c9fc5fc43"
  head "https://github.com/enhanced-mule/homebrew-tools.git"

  def install
    libexec.install "bin", "lib", "README.md"
    bin.write_exec_script libexec/"bin/emt"
  end
    test do
      assert_match "1.4.0-beta1", shell_output("#{bin}/emt -V", 2)
    end
end
