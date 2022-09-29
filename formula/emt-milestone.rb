require "formula"

class EmtMilestone < Formula
  desc "Enhanced Mule Tools CLI ( Milestone release )"
  homepage "https://www.enhanced-mule.com"
  url "https://repo1.maven.org/maven2/com/aeontronix/enhanced-mule/enhanced-mule-tools-cli/1.3.0-rc14/enhanced-mule-tools-cli-1.3.0-rc14-dist.tbz2"
  sha256 "03b5cac0d5b656889d8d279d00a71c73cf696b97fce10f867a6055938a8def07"
  head "https://github.com/enhanced-mule/homebrew-tools.git"

  def install
    libexec.install "bin", "lib", "README.md"
    bin.write_exec_script libexec / "bin/emt"
  end

  test do
    assert_match "1.3.0-rc14", shell_output("#{bin}/emt -V", 2)
  end
end
