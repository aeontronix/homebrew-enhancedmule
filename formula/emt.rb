require "formula"

class Emt < Formula
  desc "Enhanced Mule Tools CLI"
  homepage "https://www.enhanced-mule.com"
  url "https://repo1.maven.org/maven2/com/aeontronix/enhanced-mule/enhanced-mule-tools-cli/1.4.49/enhanced-mule-tools-cli-1.4.49-dist.tbz2"
  sha256 "80cd476bf9cbd451a76e6274680786051032d4a4420b8fdb03eafc61bdeb2fb9"
  head "https://github.com/enhanced-mule/homebrew-tools.git"

  def install
    libexec.install "bin", "lib", "README.md"
    bin.write_exec_script libexec/"bin/emt"
  end
    test do
      assert_match "1.4.49", shell_output("#{bin}/emt -V", 2)
    end
end
