require "formula"

class Emt < Formula
  desc "Enhanced Mule Tools CLI"
  homepage "https://www.enhanced-mule.com"
  url "https://repo1.maven.org/maven2/com/aeontronix/enhanced-mule/enhanced-mule-tools-cli/1.4.1/enhanced-mule-tools-cli-1.4.1-dist.tbz2"
  sha256 "f0aea234247beb0a9c2c6678a2bccf17d5403df1bb3bed2d0bce42ba2607c69f"
  head "https://github.com/enhanced-mule/homebrew-tools.git"

  def install
    libexec.install "bin", "lib", "README.md"
    bin.write_exec_script libexec/"bin/emt"
  end
    test do
      assert_match "1.4.1", shell_output("#{bin}/emt -V", 2)
    end
end
