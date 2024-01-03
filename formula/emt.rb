require "formula"

class Emt < Formula
  desc "Enhanced Mule Tools CLI"
  homepage "https://www.enhanced-mule.com"
  url "https://repo1.maven.org/maven2/com/aeontronix/enhanced-mule/enhanced-mule-tools-cli/1.4.69/enhanced-mule-tools-cli-1.4.69-dist.tbz2"
  sha256 "cfd0c31150f2caa7271528bfcfac91fad85c6000539fba78f0931104655847a3"
  head "https://github.com/enhanced-mule/homebrew-tools.git"

  def install
    libexec.install "bin", "lib", "README.md"
    bin.write_exec_script libexec/"bin/emt"
  end
    test do
      assert_match "1.4.69", shell_output("#{bin}/emt -V", 2)
    end
end
