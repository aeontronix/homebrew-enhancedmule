require "formula"

class EmtMilestone < Formula
  desc "Enhanced Mule Tools CLI ( Milestone release )"
  homepage "https://www.enhanced-mule.com"
  url "https://repo1.maven.org/maven2/com/aeontronix/enhanced-mule/enhanced-mule-tools-cli/1.4.70-rc1/enhanced-mule-tools-cli-1.4.70-rc1-dist.tbz2"
  sha256 "75e1aeaf277637b4d9f5ffce1e4242bc64949a946f39ece4c420c7460ed5de88"
  head "https://github.com/enhanced-mule/homebrew-tools.git"

  def install
    libexec.install "bin", "lib", "README.md"
    bin.write_exec_script libexec / "bin/emt"
  end

  test do
    assert_match "1.4.70-rc1", shell_output("#{bin}/emt -V", 2)
  end
end
