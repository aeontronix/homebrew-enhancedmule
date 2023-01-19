require "formula"

class Emt < Formula
  desc "Enhanced Mule Tools CLI"
  homepage "https://www.enhanced-mule.com"
  url "https://repo1.maven.org/maven2/com/aeontronix/enhanced-mule/enhanced-mule-tools-cli/1.4.23/enhanced-mule-tools-cli-1.4.23-dist.tbz2"
  sha256 "81901067f8809710c76ad8357f3146123a49977bd0fd02176b0e52dec49a85e3"
  head "https://github.com/enhanced-mule/homebrew-tools.git"

  def install
    libexec.install "bin", "lib", "README.md"
    bin.write_exec_script libexec/"bin/emt"
  end
    test do
      assert_match "1.4.23", shell_output("#{bin}/emt -V", 2)
    end
end
