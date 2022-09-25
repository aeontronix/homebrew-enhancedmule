require "formula"

class EmtMilestone < Formula
  desc "Enhanced Mule Tools CLI ( Milestone release )"
  homepage "https://www.enhanced-mule.com"
  url "https://repo1.maven.org/maven2/com/aeontronix/enhanced-mule/enhanced-mule-tools-cli/1.3.0-rc7/enhanced-mule-tools-cli-1.3.0-rc7-dist.tbz2"
  sha256 "6de45bd48145335475ce92986a6a221e0baf5fd2db2e16171583fb6b79cbfc75"
  head "https://github.com/enhanced-mule/homebrew-tools.git"

  def install
    libexec.install "bin", "lib", "README.md"
    bin.write_exec_script libexec / "bin/emt"
  end

  test do
    assert_match "1.3.0-rc7", shell_output("#{bin}/emt -V", 2)
  end
end
