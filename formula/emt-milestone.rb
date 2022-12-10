require "formula"

class EmtMilestone < Formula
  desc "Enhanced Mule Tools CLI ( Milestone release )"
  homepage "https://www.enhanced-mule.com"
  url "https://repo1.maven.org/maven2/com/aeontronix/enhanced-mule/enhanced-mule-tools-cli/1.4.9-beta2/enhanced-mule-tools-cli-1.4.9-beta2-dist.tbz2"
  sha256 "5f9916b0cd3f6ad70302ada5215d23a5d71494f5c7857c5027b6454d6addfb5a"
  head "https://github.com/enhanced-mule/homebrew-tools.git"

  def install
    libexec.install "bin", "lib", "README.md"
    bin.write_exec_script libexec / "bin/emt"
  end

  test do
    assert_match "1.4.9-beta2", shell_output("#{bin}/emt -V", 2)
  end
end
