require "formula"

class Emt < Formula
  desc "Enhanced Mule Tools CLI"
  homepage "https://www.enhanced-mule.com"
  url "https://repo1.maven.org/maven2/com/aeontronix/enhanced-mule/enhanced-mule-tools-cli/1.4.46/enhanced-mule-tools-cli-1.4.46-dist.tbz2"
  sha256 "2b5f79075d8eb9742f4c62fda1d8c9b877737e7a542f9405a69ef392bec6ac12"
  head "https://github.com/enhanced-mule/homebrew-tools.git"

  def install
    libexec.install "bin", "lib", "README.md"
    bin.write_exec_script libexec/"bin/emt"
  end
    test do
      assert_match "1.4.46", shell_output("#{bin}/emt -V", 2)
    end
end
