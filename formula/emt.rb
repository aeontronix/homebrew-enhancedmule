require "formula"

class Emt < Formula
  desc "Enhanced Mule Tools CLI"
  homepage "https://www.enhanced-mule.com"
  url "https://repo1.maven.org/maven2/com/aeontronix/enhanced-mule/enhanced-mule-tools-cli/1.4.60/enhanced-mule-tools-cli-1.4.60-dist.tbz2"
  sha256 "ac72c95a396d0810473e47ad8a0edeb5e6f8eaffcbe56088729e658a991c50d7"
  head "https://github.com/enhanced-mule/homebrew-tools.git"

  def install
    libexec.install "bin", "lib", "README.md"
    bin.write_exec_script libexec/"bin/emt"
  end
    test do
      assert_match "1.4.60", shell_output("#{bin}/emt -V", 2)
    end
end
