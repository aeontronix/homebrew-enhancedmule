require "formula"

class Emt < Formula
  desc "Enhanced Mule Tools CLI"
  homepage "https://www.enhanced-mule.com"
  url "https://repo1.maven.org/maven2/com/aeontronix/enhanced-mule/enhanced-mule-tools-cli/1.4.18/enhanced-mule-tools-cli-1.4.18-dist.tbz2"
  sha256 "004624d7e7b312bbfaa3683815aa56f3f5dc0223ad4783e38b20c01496343dce"
  head "https://github.com/enhanced-mule/homebrew-tools.git"

  def install
    libexec.install "bin", "lib", "README.md"
    bin.write_exec_script libexec/"bin/emt"
  end
    test do
      assert_match "1.4.18", shell_output("#{bin}/emt -V", 2)
    end
end
