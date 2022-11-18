require "formula"

class Emt < Formula
  desc "Enhanced Mule Tools CLI"
  homepage "https://www.enhanced-mule.com"
  url "https://repo1.maven.org/maven2/com/aeontronix/enhanced-mule/enhanced-mule-tools-cli/1.4.3/enhanced-mule-tools-cli-1.4.3-dist.tbz2"
  sha256 "c1c840a3f58b396c823220aae59f6830ef7d98e75680e3c2678eca7944445267"
  head "https://github.com/enhanced-mule/homebrew-tools.git"

  def install
    libexec.install "bin", "lib", "README.md"
    bin.write_exec_script libexec/"bin/emt"
  end
    test do
      assert_match "1.4.3", shell_output("#{bin}/emt -V", 2)
    end
end
