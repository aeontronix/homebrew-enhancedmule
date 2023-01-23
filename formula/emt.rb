require "formula"

class Emt < Formula
  desc "Enhanced Mule Tools CLI"
  homepage "https://www.enhanced-mule.com"
  url "https://repo1.maven.org/maven2/com/aeontronix/enhanced-mule/enhanced-mule-tools-cli/1.4.24/enhanced-mule-tools-cli-1.4.24-dist.tbz2"
  sha256 "102a63ea200adf2ef8c621410651a75aa42e6e0ee90d4f125afb00551105bf38"
  head "https://github.com/enhanced-mule/homebrew-tools.git"

  def install
    libexec.install "bin", "lib", "README.md"
    bin.write_exec_script libexec/"bin/emt"
  end
    test do
      assert_match "1.4.24", shell_output("#{bin}/emt -V", 2)
    end
end
