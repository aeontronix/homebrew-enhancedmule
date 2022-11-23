require "formula"

class Emt < Formula
  desc "Enhanced Mule Tools CLI"
  homepage "https://www.enhanced-mule.com"
  url "https://repo1.maven.org/maven2/com/aeontronix/enhanced-mule/enhanced-mule-tools-cli/1.4.4/enhanced-mule-tools-cli-1.4.4-dist.tbz2"
  sha256 "3b5321d6bbb3c7016fc0df25a907b33eea0d418722be1dc536ff995757c60ffa"
  head "https://github.com/enhanced-mule/homebrew-tools.git"

  def install
    libexec.install "bin", "lib", "README.md"
    bin.write_exec_script libexec/"bin/emt"
  end
    test do
      assert_match "1.4.4", shell_output("#{bin}/emt -V", 2)
    end
end
