require "formula"

class Emt < Formula
  desc "Enhanced Mule Tools CLI"
  homepage "https://www.enhanced-mule.com"
  url "https://oss.sonatype.org/content/repositories/snapshots/com/aeontronix/enhanced-mule/enhanced-mule-tools-cli/1.3.0-rc3-SNAPSHOT/enhanced-mule-tools-cli-@version@-dist.tbz2"
  sha256 "5ad708b2665afea54f43a8c0bc56f0d5eeb711e43e5b91c55b6a0e177b363970"
  head "https://github.com/enhanced-mule/homebrew-tools.git"

  def install
    libexec.install "bin", "lib", "README.md"
    bin.write_exec_script libexec / "bin/emt"
  end

  test do
    assert_match "1.3.0-rc3-SNAPSHOT", shell_output("#{bin}/emt -V", 2)
  end
end
