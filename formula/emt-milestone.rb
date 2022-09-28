require "formula"

class EmtMilestone < Formula
  desc "Enhanced Mule Tools CLI ( Milestone release )"
  homepage "https://www.enhanced-mule.com"
  url "https://repo1.maven.org/maven2/com/aeontronix/enhanced-mule/enhanced-mule-tools-cli/1.3.0-rc8/enhanced-mule-tools-cli-1.3.0-rc8-dist.tbz2"
  sha256 "ecc59ae7645323c110fd54aca9818ce1cc2f04dccb4c78cd9494bf636294d145"
  head "https://github.com/enhanced-mule/homebrew-tools.git"

  def install
    libexec.install "bin", "lib", "README.md"
    bin.write_exec_script libexec / "bin/emt"
  end

  test do
    assert_match "1.3.0-rc8", shell_output("#{bin}/emt -V", 2)
  end
end
