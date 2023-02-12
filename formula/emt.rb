require "formula"

class Emt < Formula
  desc "Enhanced Mule Tools CLI"
  homepage "https://www.enhanced-mule.com"
  url "https://repo1.maven.org/maven2/com/aeontronix/enhanced-mule/enhanced-mule-tools-cli/1.4.26/enhanced-mule-tools-cli-1.4.26-dist.tbz2"
  sha256 "fbca16f7c3251e78af0bd6b03924f1b83516add4e9b9e40d135c275ffe8ec457"
  head "https://github.com/enhanced-mule/homebrew-tools.git"

  def install
    libexec.install "bin", "lib", "README.md"
    bin.write_exec_script libexec/"bin/emt"
  end
    test do
      assert_match "1.4.26", shell_output("#{bin}/emt -V", 2)
    end
end
