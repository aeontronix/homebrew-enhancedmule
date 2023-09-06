require "formula"

class Emt < Formula
  desc "Enhanced Mule Tools CLI"
  homepage "https://www.enhanced-mule.com"
  url "https://repo1.maven.org/maven2/com/aeontronix/enhanced-mule/enhanced-mule-tools-cli/1.4.66/enhanced-mule-tools-cli-1.4.66-dist.tbz2"
  sha256 "597774c97a0b58aa47b8f5c30754170c0dbc99f3efeb178d80c546db3b4fd2b5"
  head "https://github.com/enhanced-mule/homebrew-tools.git"

  def install
    libexec.install "bin", "lib", "README.md"
    bin.write_exec_script libexec/"bin/emt"
  end
    test do
      assert_match "1.4.66", shell_output("#{bin}/emt -V", 2)
    end
end
