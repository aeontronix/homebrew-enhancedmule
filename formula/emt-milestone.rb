require "formula"

class EmtMilestone < Formula
  desc "Enhanced Mule Tools CLI ( Milestone release )"
  homepage "https://www.enhanced-mule.com"
  url "https://repo1.maven.org/maven2/com/aeontronix/enhanced-mule/enhanced-mule-tools-cli/1.3.0-rc11/enhanced-mule-tools-cli-1.3.0-rc11-dist.tbz2"
  sha256 "6fd4ff54ef84f7f431bb5fd124492b44ce429fd2d30c842c3ab77e175ecd2427"
  head "https://github.com/enhanced-mule/homebrew-tools.git"

  def install
    libexec.install "bin", "lib", "README.md"
    bin.write_exec_script libexec / "bin/emt"
  end

  test do
    assert_match "1.3.0-rc11", shell_output("#{bin}/emt -V", 2)
  end
end
