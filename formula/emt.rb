require "formula"

class Emt < Formula
  desc "Enhanced Mule Tools CLI"
  homepage "https://www.enhanced-mule.com"
  url "https://repo1.maven.org/maven2/com/aeontronix/enhanced-mule/enhanced-mule-tools-cli/1.4.7/enhanced-mule-tools-cli-1.4.7-dist.tbz2"
  sha256 "53882860789f364a1737644affcd57a572ec68b9d4e844d8d8ddf4b024632543"
  head "https://github.com/enhanced-mule/homebrew-tools.git"

  def install
    libexec.install "bin", "lib", "README.md"
    bin.write_exec_script libexec/"bin/emt"
  end
    test do
      assert_match "1.4.7", shell_output("#{bin}/emt -V", 2)
    end
end
