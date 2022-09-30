require "formula"

class EmtMilestone < Formula
  desc "Enhanced Mule Tools CLI ( Milestone release )"
  homepage "https://www.enhanced-mule.com"
  url "https://repo1.maven.org/maven2/com/aeontronix/enhanced-mule/enhanced-mule-tools-cli/1.3.0-rc16/enhanced-mule-tools-cli-1.3.0-rc16-dist.tbz2"
  sha256 "2285032d8282092fa5318a6cc2183828b4f83f519617c1f8c363a7f351813f26"
  head "https://github.com/enhanced-mule/homebrew-tools.git"

  def install
    libexec.install "bin", "lib", "README.md"
    bin.write_exec_script libexec / "bin/emt"
  end

  test do
    assert_match "1.3.0-rc16", shell_output("#{bin}/emt -V", 2)
  end
end
