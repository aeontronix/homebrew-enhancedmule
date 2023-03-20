require "formula"

class Emt < Formula
  desc "Enhanced Mule Tools CLI"
  homepage "https://www.enhanced-mule.com"
  url "https://repo1.maven.org/maven2/com/aeontronix/enhanced-mule/enhanced-mule-tools-cli/1.4.38/enhanced-mule-tools-cli-1.4.38-dist.tbz2"
  sha256 "f976c0299ce326717e9834756dc6ec8f7b9404b8780defe3419af341057ab451"
  head "https://github.com/enhanced-mule/homebrew-tools.git"

  def install
    libexec.install "bin", "lib", "README.md"
    bin.write_exec_script libexec/"bin/emt"
  end
    test do
      assert_match "1.4.38", shell_output("#{bin}/emt -V", 2)
    end
end
