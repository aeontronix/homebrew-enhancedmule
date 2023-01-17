require "formula"

class EmtMilestone < Formula
  desc "Enhanced Mule Tools CLI ( Milestone release )"
  homepage "https://www.enhanced-mule.com"
  url "https://repo1.maven.org/maven2/com/aeontronix/enhanced-mule/enhanced-mule-tools-cli/1.4.22-beta1/enhanced-mule-tools-cli-1.4.22-beta1-dist.tbz2"
  sha256 "cfbc529efa6aa7150746ae88e520e1ec20bb3e98bf9f838d4431c80def4cc82e"
  head "https://github.com/enhanced-mule/homebrew-tools.git"

  def install
    libexec.install "bin", "lib", "README.md"
    bin.write_exec_script libexec / "bin/emt"
  end

  test do
    assert_match "1.4.22-beta1", shell_output("#{bin}/emt -V", 2)
  end
end
