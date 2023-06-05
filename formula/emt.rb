require "formula"

class Emt < Formula
  desc "Enhanced Mule Tools CLI"
  homepage "https://www.enhanced-mule.com"
  url "https://repo1.maven.org/maven2/com/aeontronix/enhanced-mule/enhanced-mule-tools-cli/1.4.55/enhanced-mule-tools-cli-1.4.55-dist.tbz2"
  sha256 "e96007f808b75a13d51bf1be620508b48fd98a102dbb75242ec19742dc25ea08"
  head "https://github.com/enhanced-mule/homebrew-tools.git"

  def install
    libexec.install "bin", "lib", "README.md"
    bin.write_exec_script libexec/"bin/emt"
  end
    test do
      assert_match "1.4.55", shell_output("#{bin}/emt -V", 2)
    end
end
