require "formula"

class Emt < Formula
  desc "Enhanced Mule Tools CLI"
  homepage "https://www.enhanced-mule.com"
  url "https://repo1.maven.org/maven2/com/aeontronix/enhanced-mule/enhanced-mule-tools-cli/1.4.34/enhanced-mule-tools-cli-1.4.34-dist.tbz2"
  sha256 "b586e736ef814b7ebe89e35c618292c2c4cf7c8a30f1f734af2046faccd1ef6e"
  head "https://github.com/enhanced-mule/homebrew-tools.git"

  def install
    libexec.install "bin", "lib", "README.md"
    bin.write_exec_script libexec/"bin/emt"
  end
    test do
      assert_match "1.4.34", shell_output("#{bin}/emt -V", 2)
    end
end
