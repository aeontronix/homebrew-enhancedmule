require "formula"

class Emt < Formula
  desc "Enhanced Mule Tools CLI"
  homepage "https://www.enhanced-mule.com"
  url "https://repo1.maven.org/maven2/com/aeontronix/enhanced-mule/enhanced-mule-tools-cli/1.4.43/enhanced-mule-tools-cli-1.4.43-dist.tbz2"
  sha256 "6a92313f88ae0d00e1c318fa3b7e79f3814b8394a85cc49fda1c254dcf897b84"
  head "https://github.com/enhanced-mule/homebrew-tools.git"

  def install
    libexec.install "bin", "lib", "README.md"
    bin.write_exec_script libexec/"bin/emt"
  end
    test do
      assert_match "1.4.43", shell_output("#{bin}/emt -V", 2)
    end
end
