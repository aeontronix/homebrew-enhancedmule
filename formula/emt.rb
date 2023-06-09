require "formula"

class Emt < Formula
  desc "Enhanced Mule Tools CLI"
  homepage "https://www.enhanced-mule.com"
  url "https://repo1.maven.org/maven2/com/aeontronix/enhanced-mule/enhanced-mule-tools-cli/1.4.58/enhanced-mule-tools-cli-1.4.58-dist.tbz2"
  sha256 "5dd6621e424da5735c8507d11625ddf60990529a427c85898d7427a7dbb25e81"
  head "https://github.com/enhanced-mule/homebrew-tools.git"

  def install
    libexec.install "bin", "lib", "README.md"
    bin.write_exec_script libexec/"bin/emt"
  end
    test do
      assert_match "1.4.58", shell_output("#{bin}/emt -V", 2)
    end
end
