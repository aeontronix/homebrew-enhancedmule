require "formula"

class Emt < Formula
  desc "Enhanced Mule Tools CLI"
  homepage "https://www.enhanced-mule.com"
  url "https://repo1.maven.org/maven2/com/aeontronix/enhanced-mule/enhanced-mule-tools-cli/1.4.54/enhanced-mule-tools-cli-1.4.54-dist.tbz2"
  sha256 "d7a02e39b9ae2d19c431a398804a1896c4b4e85f9197bc5a681c873e63fbcfb4"
  head "https://github.com/enhanced-mule/homebrew-tools.git"

  def install
    libexec.install "bin", "lib", "README.md"
    bin.write_exec_script libexec/"bin/emt"
  end
    test do
      assert_match "1.4.54", shell_output("#{bin}/emt -V", 2)
    end
end
