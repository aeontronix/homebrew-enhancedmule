require "formula"

class EmtMilestone < Formula
  desc "Enhanced Mule Tools CLI ( Milestone release )"
  homepage "https://www.enhanced-mule.com"
  url "https://repo1.maven.org/maven2/com/aeontronix/enhanced-mule/enhanced-mule-tools-cli/1.4.70-beta1/enhanced-mule-tools-cli-1.4.70-beta1-dist.tbz2"
  sha256 "3f5f96f3e77566505ad39338c4fe30c54a36c99bd1b04eb190b3b12d58ea6139"
  head "https://github.com/enhanced-mule/homebrew-tools.git"

  def install
    libexec.install "bin", "lib", "README.md"
    bin.write_exec_script libexec / "bin/emt"
  end

  test do
    assert_match "1.4.70-beta1", shell_output("#{bin}/emt -V", 2)
  end
end
