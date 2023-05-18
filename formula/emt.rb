require "formula"

class Emt < Formula
  desc "Enhanced Mule Tools CLI"
  homepage "https://www.enhanced-mule.com"
  url "https://repo1.maven.org/maven2/com/aeontronix/enhanced-mule/enhanced-mule-tools-cli/1.4.47/enhanced-mule-tools-cli-1.4.47-dist.tbz2"
  sha256 "6da0d94a4ed04c2e956c97f00d876ae58f9a1b09cb8c1163c459fd86b3bff83b"
  head "https://github.com/enhanced-mule/homebrew-tools.git"

  def install
    libexec.install "bin", "lib", "README.md"
    bin.write_exec_script libexec/"bin/emt"
  end
    test do
      assert_match "1.4.47", shell_output("#{bin}/emt -V", 2)
    end
end
