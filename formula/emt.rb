require "formula"

class Emt < Formula
  desc "Enhanced Mule Tools CLI"
  homepage "https://www.enhanced-mule.com"
  url "https://repo1.maven.org/maven2/com/aeontronix/enhanced-mule/enhanced-mule-tools-cli/1.4.21/enhanced-mule-tools-cli-1.4.21-dist.tbz2"
  sha256 "bd1984b9098098713c13a687f83c8c4aaba47a1d8d3fd7e890fa894707afdc9c"
  head "https://github.com/enhanced-mule/homebrew-tools.git"

  def install
    libexec.install "bin", "lib", "README.md"
    bin.write_exec_script libexec/"bin/emt"
  end
    test do
      assert_match "1.4.21", shell_output("#{bin}/emt -V", 2)
    end
end
