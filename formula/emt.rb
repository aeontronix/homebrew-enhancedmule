require "formula"

class Emt < Formula
  desc "Enhanced Mule Tools CLI"
  homepage "https://www.enhanced-mule.com"
  url "https://repo1.maven.org/maven2/com/aeontronix/enhanced-mule/enhanced-mule-tools-cli/1.3.3/enhanced-mule-tools-cli-1.3.3-dist.tbz2"
  sha256 "f93f2a420afaa40a3f45a4a6f87ec384713410aae46704e51f66482786c3237e"
  head "https://github.com/enhanced-mule/homebrew-tools.git"

  def install
    libexec.install "bin", "lib", "README.md"
    bin.write_exec_script libexec/"bin/emt"
  end
    test do
      assert_match "1.3.3", shell_output("#{bin}/emt -V", 2)
    end
end
