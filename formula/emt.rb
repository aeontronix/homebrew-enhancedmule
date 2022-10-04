require "formula"

class Emt < Formula
  desc "Enhanced Mule Tools CLI ( Milestone release )"
  homepage "https://www.enhanced-mule.com"
  url "https://repo1.maven.org/maven2/com/aeontronix/enhanced-mule/enhanced-mule-tools-cli/1.3.0/enhanced-mule-tools-cli-1.3.0-dist.tbz2"
  sha256 "dcdf74ac4992b9ec304f7d0d771867359be2dd5cd116b01dd752f1054317d723"
  head "https://github.com/enhanced-mule/homebrew-tools.git"

  def install
    libexec.install "bin", "lib", "README.md"
    bin.write_exec_script libexec / "bin/emt"
  end

  test do
    assert_match "1.3.0", shell_output("#{bin}/emt -V", 2)
  end
end
