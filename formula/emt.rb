require "formula"

class Emt < Formula
  desc "Enhanced Mule Tools CLI"
  homepage "https://www.enhanced-mule.com"
  url "https://repo1.maven.org/maven2/com/aeontronix/enhanced-mule/enhanced-mule-tools-cli/1.4.64/enhanced-mule-tools-cli-1.4.64-dist.tbz2"
  sha256 "983cf0a4d7d93e943b101f65ffabaf7a02b874322a04c011e87b83d24bda36da"
  head "https://github.com/enhanced-mule/homebrew-tools.git"

  def install
    libexec.install "bin", "lib", "README.md"
    bin.write_exec_script libexec/"bin/emt"
  end
    test do
      assert_match "1.4.64", shell_output("#{bin}/emt -V", 2)
    end
end
