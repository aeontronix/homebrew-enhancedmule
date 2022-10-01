require "formula"

class EmtMilestone < Formula
  desc "Enhanced Mule Tools CLI ( Milestone release )"
  homepage "https://www.enhanced-mule.com"
  url "https://repo1.maven.org/maven2/com/aeontronix/enhanced-mule/enhanced-mule-tools-cli/1.3.0-rc18/enhanced-mule-tools-cli-1.3.0-rc18-dist.tbz2"
  sha256 "569bc12a35dd08603e62d1c944b7d011346c4bcde339d4b0075b8ba4a3bcebb3"
  head "https://github.com/enhanced-mule/homebrew-tools.git"

  def install
    libexec.install "bin", "lib", "README.md"
    bin.write_exec_script libexec / "bin/emt"
  end

  test do
    assert_match "1.3.0-rc18", shell_output("#{bin}/emt -V", 2)
  end
end
