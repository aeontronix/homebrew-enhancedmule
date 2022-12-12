require "formula"

class Emt < Formula
  desc "Enhanced Mule Tools CLI"
  homepage "https://www.enhanced-mule.com"
  url "https://repo1.maven.org/maven2/com/aeontronix/enhanced-mule/enhanced-mule-tools-cli/1.4.10/enhanced-mule-tools-cli-1.4.10-dist.tbz2"
  sha256 "7dac0571c9b5185ef8c4a00ae06252d75d748da53a96c3a3e176f60c1d3ef902"
  head "https://github.com/enhanced-mule/homebrew-tools.git"

  def install
    libexec.install "bin", "lib", "README.md"
    bin.write_exec_script libexec/"bin/emt"
  end
    test do
      assert_match "1.4.10", shell_output("#{bin}/emt -V", 2)
    end
end
