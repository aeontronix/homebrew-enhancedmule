require "formula"

class EmtMilestone < Formula
  desc "Enhanced Mule Tools CLI ( Milestone release )"
  homepage "https://www.enhanced-mule.com"
  url "https://repo1.maven.org/maven2/com/aeontronix/enhanced-mule/enhanced-mule-tools-cli/1.4.69-beta1/enhanced-mule-tools-cli-1.4.69-beta1-dist.tbz2"
  sha256 "b40e7ca812ca8f36e56d02cfb46a4a0cae71908cceb996e4e8ba66f65ad3c237"
  head "https://github.com/enhanced-mule/homebrew-tools.git"

  def install
    libexec.install "bin", "lib", "README.md"
    bin.write_exec_script libexec / "bin/emt"
  end

  test do
    assert_match "1.4.69-beta1", shell_output("#{bin}/emt -V", 2)
  end
end
