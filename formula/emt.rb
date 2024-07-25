require "formula"

class Emt < Formula
  desc "Enhanced Mule Tools CLI"
  homepage "https://www.enhanced-mule.com"
  url "https://repo1.maven.org/maven2/com/aeontronix/enhanced-mule/enhanced-mule-tools-cli/1.5.0/enhanced-mule-tools-cli-1.5.0-dist.tbz2"
  sha256 "bdf453f7ad9f5d5b2b4d3ca5b404c915e9c757f933eb238e386a7075458335e0"
  head "https://github.com/enhanced-mule/homebrew-tools.git"

  def install
    libexec.install "bin", "lib", "README.md"
    bin.write_exec_script libexec/"bin/emt"
  end
    test do
      assert_match "1.5.0", shell_output("#{bin}/emt -V", 2)
    end
end
