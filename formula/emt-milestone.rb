require "formula"

class EmtMilestone < Formula
  desc "Enhanced Mule Tools CLI ( Milestone release )"
  homepage "https://www.enhanced-mule.com"
  url "https://repo1.maven.org/maven2/com/aeontronix/enhanced-mule/enhanced-mule-tools-cli/1.3.0-rc12/enhanced-mule-tools-cli-1.3.0-rc12-dist.tbz2"
  sha256 "0d766527f2e3574d525e392e22d25692add3ea31e1f8357cce3c292e73c98ace"
  head "https://github.com/enhanced-mule/homebrew-tools.git"

  def install
    libexec.install "bin", "lib", "README.md"
    bin.write_exec_script libexec / "bin/emt"
  end

  test do
    assert_match "1.3.0-rc12", shell_output("#{bin}/emt -V", 2)
  end
end
