require "formula"

class Emt < Formula
  desc "Enhanced Mule Tools CLI"
  homepage "https://www.enhanced-mule.com"
  url "https://repo1.maven.org/maven2/com/aeontronix/enhanced-mule/enhanced-mule-tools-cli/1.4.44/enhanced-mule-tools-cli-1.4.44-dist.tbz2"
  sha256 "414c7525265ada0dc21a7f6e33db1fa01111c92b9d04ab4fc9ddcaf4383f6b89"
  head "https://github.com/enhanced-mule/homebrew-tools.git"

  def install
    libexec.install "bin", "lib", "README.md"
    bin.write_exec_script libexec/"bin/emt"
  end
    test do
      assert_match "1.4.44", shell_output("#{bin}/emt -V", 2)
    end
end
