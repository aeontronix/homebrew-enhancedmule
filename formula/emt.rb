require "formula"

class Emt < Formula
  desc "Enhanced Mule Tools CLI"
  homepage "https://www.enhanced-mule.com"
  url "https://repo1.maven.org/maven2/com/aeontronix/enhanced-mule/enhanced-mule-tools-cli/1.4.8/enhanced-mule-tools-cli-1.4.8-dist.tbz2"
  sha256 "2fd808708901b76e35c696a7c508860c96571c1afe789684d28f6434ec07dc62"
  head "https://github.com/enhanced-mule/homebrew-tools.git"

  def install
    libexec.install "bin", "lib", "README.md"
    bin.write_exec_script libexec/"bin/emt"
  end
    test do
      assert_match "1.4.8", shell_output("#{bin}/emt -V", 2)
    end
end
