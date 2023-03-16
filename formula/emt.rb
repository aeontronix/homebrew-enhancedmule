require "formula"

class Emt < Formula
  desc "Enhanced Mule Tools CLI"
  homepage "https://www.enhanced-mule.com"
  url "https://repo1.maven.org/maven2/com/aeontronix/enhanced-mule/enhanced-mule-tools-cli/1.4.33/enhanced-mule-tools-cli-1.4.33-dist.tbz2"
  sha256 "b4c5457627c9fad472c85a38b6bf8d55ec69d861a572d8c716d86520b7f587db"
  head "https://github.com/enhanced-mule/homebrew-tools.git"

  def install
    libexec.install "bin", "lib", "README.md"
    bin.write_exec_script libexec/"bin/emt"
  end
    test do
      assert_match "1.4.33", shell_output("#{bin}/emt -V", 2)
    end
end
