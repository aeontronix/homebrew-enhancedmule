require "formula"

class EmtMilestone < Formula
  desc "Enhanced Mule Tools CLI ( Milestone release )"
  homepage "https://www.enhanced-mule.com"
  url "https://repo1.maven.org/maven2/com/aeontronix/enhanced-mule/enhanced-mule-tools-cli/1.3.0-rc9/enhanced-mule-tools-cli-1.3.0-rc9-dist.tbz2"
  sha256 "d5f8d24ffbee55369685d153e7e11549aa7be63c8a93347eb4608777e3a2f860"
  head "https://github.com/enhanced-mule/homebrew-tools.git"

  def install
    libexec.install "bin", "lib", "README.md"
    bin.write_exec_script libexec / "bin/emt"
  end

  test do
    assert_match "1.3.0-rc9", shell_output("#{bin}/emt -V", 2)
  end
end
