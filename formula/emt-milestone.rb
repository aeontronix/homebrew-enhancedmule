require "formula"

class EmtMilestone < Formula
  desc "Enhanced Mule Tools CLI ( Milestone release )"
  homepage "https://www.enhanced-mule.com"
  url "https://repo1.maven.org/maven2/com/aeontronix/enhanced-mule/enhanced-mule-tools-cli/1.4.67-beta3/enhanced-mule-tools-cli-1.4.67-beta3-dist.tbz2"
  sha256 "508374d64794467722422f94cb39d8e8699c3699f78f5bf360c3fef9a6d22cc7"
  head "https://github.com/enhanced-mule/homebrew-tools.git"

  def install
    libexec.install "bin", "lib", "README.md"
    bin.write_exec_script libexec / "bin/emt"
  end

  test do
    assert_match "1.4.67-beta3", shell_output("#{bin}/emt -V", 2)
  end
end
