require "formula"

class Emt < Formula
  desc "Enhanced Mule Tools CLI"
  homepage "https://www.enhanced-mule.com"
  url "https://repo1.maven.org/maven2/com/aeontronix/enhanced-mule/enhanced-mule-tools-cli/1.3.1/enhanced-mule-tools-cli-1.3.1-dist.tbz2"
  sha256 "ddab416d2e36f8f9df8ee8e8f311ea2cedf501779794665a2efb1d03769bfed7"
  head "https://github.com/enhanced-mule/homebrew-tools.git"

  def install
    libexec.install "bin", "lib", "README.md"
    bin.write_exec_script libexec/"bin/emt"
  end
    test do
      assert_match "1.3.1", shell_output("#{bin}/emt -V", 2)
    end
end
