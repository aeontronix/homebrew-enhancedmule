require "formula"

class Emt < Formula
  desc "Enhanced Mule Tools CLI"
  homepage "https://www.enhanced-mule.com"
  url "https://repo1.maven.org/maven2/com/aeontronix/enhanced-mule/enhanced-mule-tools-cli/1.4.48/enhanced-mule-tools-cli-1.4.48-dist.tbz2"
  sha256 "71bc092016b718d72ac78911048e473370a815e1f4cffd17fae5ce19e7e66408"
  head "https://github.com/enhanced-mule/homebrew-tools.git"

  def install
    libexec.install "bin", "lib", "README.md"
    bin.write_exec_script libexec/"bin/emt"
  end
    test do
      assert_match "1.4.48", shell_output("#{bin}/emt -V", 2)
    end
end
