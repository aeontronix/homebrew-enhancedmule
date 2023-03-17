require "formula"

class Emt < Formula
  desc "Enhanced Mule Tools CLI"
  homepage "https://www.enhanced-mule.com"
  url "https://repo1.maven.org/maven2/com/aeontronix/enhanced-mule/enhanced-mule-tools-cli/1.4.36/enhanced-mule-tools-cli-1.4.36-dist.tbz2"
  sha256 "2a195e3666098ae19585e23b2cd73a272630ad2d06b585ffc6035f6c1d741eb6"
  head "https://github.com/enhanced-mule/homebrew-tools.git"

  def install
    libexec.install "bin", "lib", "README.md"
    bin.write_exec_script libexec/"bin/emt"
  end
    test do
      assert_match "1.4.36", shell_output("#{bin}/emt -V", 2)
    end
end
