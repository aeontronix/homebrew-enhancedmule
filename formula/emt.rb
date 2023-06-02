require "formula"

class Emt < Formula
  desc "Enhanced Mule Tools CLI"
  homepage "https://www.enhanced-mule.com"
  url "https://repo1.maven.org/maven2/com/aeontronix/enhanced-mule/enhanced-mule-tools-cli/1.4.51/enhanced-mule-tools-cli-1.4.51-dist.tbz2"
  sha256 "b29117d9d4fc804bdac340d17eb0138ceea20ba9a4868a4e1fc8b919c03d6045"
  head "https://github.com/enhanced-mule/homebrew-tools.git"

  def install
    libexec.install "bin", "lib", "README.md"
    bin.write_exec_script libexec/"bin/emt"
  end
    test do
      assert_match "1.4.51", shell_output("#{bin}/emt -V", 2)
    end
end
