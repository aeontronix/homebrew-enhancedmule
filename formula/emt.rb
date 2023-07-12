require "formula"

class Emt < Formula
  desc "Enhanced Mule Tools CLI"
  homepage "https://www.enhanced-mule.com"
  url "https://repo1.maven.org/maven2/com/aeontronix/enhanced-mule/enhanced-mule-tools-cli/1.4.63/enhanced-mule-tools-cli-1.4.63-dist.tbz2"
  sha256 "9ea73d28a0ea6d94ec892ec3b5901a36c65830cd1a8662c152e4829dfb8ff6b4"
  head "https://github.com/enhanced-mule/homebrew-tools.git"

  def install
    libexec.install "bin", "lib", "README.md"
    bin.write_exec_script libexec/"bin/emt"
  end
    test do
      assert_match "1.4.63", shell_output("#{bin}/emt -V", 2)
    end
end
