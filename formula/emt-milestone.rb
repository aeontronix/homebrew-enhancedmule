require "formula"

class EmtMilestone < Formula
  desc "Enhanced Mule Tools CLI ( Milestone release )"
  homepage "https://www.enhanced-mule.com"
  url "https://repo1.maven.org/maven2/com/aeontronix/enhanced-mule/enhanced-mule-tools-cli/1.4.70-rc2/enhanced-mule-tools-cli-1.4.70-rc2-dist.tbz2"
  sha256 "9a9aea546e1bb3774b809dfaa51b68e5e105eebe3ccfdb57eacbec524adcd551"
  head "https://github.com/enhanced-mule/homebrew-tools.git"

  def install
    libexec.install "bin", "lib", "README.md"
    bin.write_exec_script libexec / "bin/emt"
  end

  test do
    assert_match "1.4.70-rc2", shell_output("#{bin}/emt -V", 2)
  end
end
