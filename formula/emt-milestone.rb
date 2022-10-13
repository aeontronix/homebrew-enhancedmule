require "formula"

class EmtMilestone < Formula
  desc "Enhanced Mule Tools CLI ( Milestone release )"
  homepage "https://www.enhanced-mule.com"
  url "https://repo1.maven.org/maven2/com/aeontronix/enhanced-mule/enhanced-mule-tools-cli/1.4.0-beta2/enhanced-mule-tools-cli-1.4.0-beta2-dist.tbz2"
  sha256 "d23b58cef6611829f8dd642afe47266a031ce09d4ce8b9a292b6f791eed496bc"
  head "https://github.com/enhanced-mule/homebrew-tools.git"

  def install
    libexec.install "bin", "lib", "README.md"
    bin.write_exec_script libexec / "bin/emt"
  end

  test do
    assert_match "1.4.0-beta2", shell_output("#{bin}/emt -V", 2)
  end
end
