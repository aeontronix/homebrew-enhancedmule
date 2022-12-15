require "formula"

class Emt < Formula
  desc "Enhanced Mule Tools CLI"
  homepage "https://www.enhanced-mule.com"
  url "https://repo1.maven.org/maven2/com/aeontronix/enhanced-mule/enhanced-mule-tools-cli/1.4.14/enhanced-mule-tools-cli-1.4.14-dist.tbz2"
  sha256 "57f4bf68415aefd54050562e8fb3e674cd63c2085ecc30b30b62af6758dcd96b"
  head "https://github.com/enhanced-mule/homebrew-tools.git"

  def install
    libexec.install "bin", "lib", "README.md"
    bin.write_exec_script libexec/"bin/emt"
  end
    test do
      assert_match "1.4.14", shell_output("#{bin}/emt -V", 2)
    end
end
