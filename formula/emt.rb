require "formula"

class Emt < Formula
  desc "Enhanced Mule Tools CLI"
  homepage "https://www.enhanced-mule.com"
  url "https://repo1.maven.org/maven2/com/aeontronix/enhanced-mule/enhanced-mule-tools-cli/1.4.17/enhanced-mule-tools-cli-1.4.17-dist.tbz2"
  sha256 "cb1d66403195c4c7452172529d0340f7048cf65a054b41ebb0ad27233c8d3a4a"
  head "https://github.com/enhanced-mule/homebrew-tools.git"

  def install
    libexec.install "bin", "lib", "README.md"
    bin.write_exec_script libexec/"bin/emt"
  end
    test do
      assert_match "1.4.17", shell_output("#{bin}/emt -V", 2)
    end
end
