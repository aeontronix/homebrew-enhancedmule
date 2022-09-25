require "formula"

class Emt < Formula
  desc "Enhanced Mule Tools CLI"
  homepage "https://www.enhanced-mule.com"
  url "https://oss.sonatype.org/content/repositories/snapshots/com/aeontronix/enhanced-mule/enhanced-mule-tools-cli/1.3.0-rc3-SNAPSHOT/enhanced-mule-tools-cli-1.3.0-rc3-SNAPSHOT-dist.tbz2"
  sha256 "db1994096c36d05958248141e65b3dfafedee30143e84a72a4276c6932de3b27"
  head "https://github.com/enhanced-mule/homebrew-tools.git"

  def install
    libexec.install "bin", "lib", "README.md"
    bin.write_exec_script libexec / "bin/emt"
  end

  test do
    assert_match "1.3.0-rc3-SNAPSHOT", shell_output("#{bin}/emt -V", 2)
  end
end
