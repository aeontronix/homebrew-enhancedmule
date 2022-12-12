require "formula"

class Emt < Formula
  desc "Enhanced Mule Tools CLI"
  homepage "https://www.enhanced-mule.com"
  url "https://repo1.maven.org/maven2/com/aeontronix/enhanced-mule/enhanced-mule-tools-cli/1.4.11/enhanced-mule-tools-cli-1.4.11-dist.tbz2"
  sha256 "e1e740898678f4c5058ec2c020452c21fc3728c6bf28e211ea45a7a7633020a0"
  head "https://github.com/enhanced-mule/homebrew-tools.git"

  def install
    libexec.install "bin", "lib", "README.md"
    bin.write_exec_script libexec/"bin/emt"
  end
    test do
      assert_match "1.4.11", shell_output("#{bin}/emt -V", 2)
    end
end
