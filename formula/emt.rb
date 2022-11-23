require "formula"

class Emt < Formula
  desc "Enhanced Mule Tools CLI"
  homepage "https://www.enhanced-mule.com"
  url "https://repo1.maven.org/maven2/com/aeontronix/enhanced-mule/enhanced-mule-tools-cli/1.4.6/enhanced-mule-tools-cli-1.4.6-dist.tbz2"
  sha256 "207be5f04c760db8af04f448cfabe05f62127720602a0620d7e3093a2eae8088"
  head "https://github.com/enhanced-mule/homebrew-tools.git"

  def install
    libexec.install "bin", "lib", "README.md"
    bin.write_exec_script libexec/"bin/emt"
  end
    test do
      assert_match "1.4.6", shell_output("#{bin}/emt -V", 2)
    end
end
