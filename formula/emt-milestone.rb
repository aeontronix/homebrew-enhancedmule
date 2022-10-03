require "formula"

class EmtMilestone < Formula
  desc "Enhanced Mule Tools CLI ( Milestone release )"
  homepage "https://www.enhanced-mule.com"
  url "https://repo1.maven.org/maven2/com/aeontronix/enhanced-mule/enhanced-mule-tools-cli/1.3.0-rc19/enhanced-mule-tools-cli-1.3.0-rc19-dist.tbz2"
  sha256 "fac1d2befb3c6083791825f087de525416fe79dba1f154a856ed56be8733761e"
  head "https://github.com/enhanced-mule/homebrew-tools.git"

  def install
    libexec.install "bin", "lib", "README.md"
    bin.write_exec_script libexec / "bin/emt"
  end

  test do
    assert_match "1.3.0-rc19", shell_output("#{bin}/emt -V", 2)
  end
end
