require "formula"

class Emt < Formula
  desc "Enhanced Mule Tools CLI"
  homepage "https://www.enhanced-mule.com"
  url "https://repo1.maven.org/maven2/com/aeontronix/enhanced-mule/enhanced-mule-tools-cli/1.6.0/enhanced-mule-tools-cli-1.6.0-dist.tbz2"
  sha256 "3ab2a1c320071368b2c12c81995a35a53382536d37162acc48814d6a92d0a9a8"
  head "https://github.com/enhanced-mule/homebrew-tools.git"

  def install
    libexec.install "bin", "lib", "README.md"
    bin.write_exec_script libexec/"bin/emt"
  end
    test do
      assert_match "1.6.0", shell_output("#{bin}/emt -V", 2)
    end
end
