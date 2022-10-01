require "formula"

class EmtMilestone < Formula
  desc "Enhanced Mule Tools CLI ( Milestone release )"
  homepage "https://www.enhanced-mule.com"
  url "https://repo1.maven.org/maven2/com/aeontronix/enhanced-mule/enhanced-mule-tools-cli/1.3.0-rc17/enhanced-mule-tools-cli-1.3.0-rc17-dist.tbz2"
  sha256 "f9e8b2e6c63d9ae43487fcd6f8542ebdc77db7231408f7543de273c8c379035a"
  head "https://github.com/enhanced-mule/homebrew-tools.git"

  def install
    libexec.install "bin", "lib", "README.md"
    bin.write_exec_script libexec / "bin/emt"
  end

  test do
    assert_match "1.3.0-rc17", shell_output("#{bin}/emt -V", 2)
  end
end
