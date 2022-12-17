require "formula"

class Emt < Formula
  desc "Enhanced Mule Tools CLI"
  homepage "https://www.enhanced-mule.com"
  url "https://repo1.maven.org/maven2/com/aeontronix/enhanced-mule/enhanced-mule-tools-cli/1.4.16/enhanced-mule-tools-cli-1.4.16-dist.tbz2"
  sha256 "40c90039ecdf8d63342a983c11b9114976ead893ed1aa00e8416194a4424674d"
  head "https://github.com/enhanced-mule/homebrew-tools.git"

  def install
    libexec.install "bin", "lib", "README.md"
    bin.write_exec_script libexec/"bin/emt"
  end
    test do
      assert_match "1.4.16", shell_output("#{bin}/emt -V", 2)
    end
end
