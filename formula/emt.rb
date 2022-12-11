require "formula"

class Emt < Formula
  desc "Enhanced Mule Tools CLI"
  homepage "https://www.enhanced-mule.com"
  url "https://repo1.maven.org/maven2/com/aeontronix/enhanced-mule/enhanced-mule-tools-cli/1.4.9/enhanced-mule-tools-cli-1.4.9-dist.tbz2"
  sha256 "ddd1b2ab32afef24f8466cc98bccbd94feb4e9bdb9565b548ecdbb42280cf3ce"
  head "https://github.com/enhanced-mule/homebrew-tools.git"

  def install
    libexec.install "bin", "lib", "README.md"
    bin.write_exec_script libexec/"bin/emt"
  end
    test do
      assert_match "1.4.9", shell_output("#{bin}/emt -V", 2)
    end
end
