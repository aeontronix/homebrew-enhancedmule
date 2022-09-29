require "formula"

class EmtMilestone < Formula
  desc "Enhanced Mule Tools CLI ( Milestone release )"
  homepage "https://www.enhanced-mule.com"
  url "https://repo1.maven.org/maven2/com/aeontronix/enhanced-mule/enhanced-mule-tools-cli/1.3.0-rc10/enhanced-mule-tools-cli-1.3.0-rc10-dist.tbz2"
  sha256 "b3f9914c1326271230feb3079c6614076e84b7c2481e74e269ef099314edecad"
  head "https://github.com/enhanced-mule/homebrew-tools.git"

  def install
    libexec.install "bin", "lib", "README.md"
    bin.write_exec_script libexec / "bin/emt"
  end

  test do
    assert_match "1.3.0-rc10", shell_output("#{bin}/emt -V", 2)
  end
end
