require "formula"

class Emt < Formula
  desc "Enhanced Mule Tools CLI"
  homepage "https://www.enhanced-mule.com"
  url "https://repo1.maven.org/maven2/com/aeontronix/enhanced-mule/enhanced-mule-tools-cli/1.4.29/enhanced-mule-tools-cli-1.4.29-dist.tbz2"
  sha256 "162179615e17c640b277646aef08d87432b81d223e8a303c84830bf22749c6c2"
  head "https://github.com/enhanced-mule/homebrew-tools.git"

  def install
    libexec.install "bin", "lib", "README.md"
    bin.write_exec_script libexec/"bin/emt"
  end
    test do
      assert_match "1.4.29", shell_output("#{bin}/emt -V", 2)
    end
end
