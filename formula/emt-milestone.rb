require "formula"

class EmtMilestone < Formula
  desc "Enhanced Mule Tools CLI ( Milestone release )"
  homepage "https://www.enhanced-mule.com"
  url "https://repo1.maven.org/maven2/com/aeontronix/enhanced-mule/enhanced-mule-tools-cli/1.3.0-rc6/enhanced-mule-tools-cli-1.3.0-rc6-dist.tbz2"
  sha256 "35aa511f1665ae7ad6c9966e053ab2b29edbec2eaa083945a6d082c7ec62a912"
  head "https://github.com/enhanced-mule/homebrew-tools.git"

  def install
    libexec.install "bin", "lib", "README.md"
    bin.write_exec_script libexec / "bin/emt"
  end

  test do
    assert_match "1.3.0-rc6", shell_output("#{bin}/emt -V", 2)
  end
end
