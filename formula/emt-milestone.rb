require "formula"

class EmtMilestone < Formula
  desc "Enhanced Mule Tools CLI ( Milestone release )"
  homepage "https://www.enhanced-mule.com"
  url "https://repo1.maven.org/maven2/com/aeontronix/enhanced-mule/enhanced-mule-tools-cli/1.3.0-rc13/enhanced-mule-tools-cli-1.3.0-rc13-dist.tbz2"
  sha256 "ab4995a05b3a65d8d0d60e183d5952399a9d259fc75225cfd88a1dfb042d4796"
  head "https://github.com/enhanced-mule/homebrew-tools.git"

  def install
    libexec.install "bin", "lib", "README.md"
    bin.write_exec_script libexec / "bin/emt"
  end

  test do
    assert_match "1.3.0-rc13", shell_output("#{bin}/emt -V", 2)
  end
end
