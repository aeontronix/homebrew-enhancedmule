require "formula"

class Emt < Formula
  desc "Enhanced Mule Tools CLI"
  homepage "https://www.enhanced-mule.com"
  url "https://repo1.maven.org/maven2/com/aeontronix/enhanced-mule/enhanced-mule-tools-cli/1.4.2/enhanced-mule-tools-cli-1.4.2-dist.tbz2"
  sha256 "8d15a377cb757c9e6ce9172b27b106614ec73db4e93d498d289718f1460ba529"
  head "https://github.com/enhanced-mule/homebrew-tools.git"

  def install
    libexec.install "bin", "lib", "README.md"
    bin.write_exec_script libexec/"bin/emt"
  end
    test do
      assert_match "1.4.2", shell_output("#{bin}/emt -V", 2)
    end
end
