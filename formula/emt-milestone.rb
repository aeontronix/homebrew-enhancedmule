require "formula"

class EmtMilestone < Formula
  desc "Enhanced Mule Tools CLI ( Milestone release )"
  homepage "https://www.enhanced-mule.com"
  url "https://repo1.maven.org/maven2/com/aeontronix/enhanced-mule/enhanced-mule-tools-cli/1.4.67-beta4/enhanced-mule-tools-cli-1.4.67-beta4-dist.tbz2"
  sha256 "6b8efeb437443fd021705ddeafae3cc03127d56a9252bf81d23e2bdcf491c3db"
  head "https://github.com/enhanced-mule/homebrew-tools.git"

  def install
    libexec.install "bin", "lib", "README.md"
    bin.write_exec_script libexec / "bin/emt"
  end

  test do
    assert_match "1.4.67-beta4", shell_output("#{bin}/emt -V", 2)
  end
end
