require "formula"

class Emt < Formula
  desc "Enhanced Mule Tools CLI"
  homepage "https://www.enhanced-mule.com"
  url "https://repo1.maven.org/maven2/com/aeontronix/enhanced-mule/enhanced-mule-tools-cli/1.4.50/enhanced-mule-tools-cli-1.4.50-dist.tbz2"
  sha256 "c38cd28232980e99fe892619dbdf644ced45e49af1d175f5d41feebb2ae3188d"
  head "https://github.com/enhanced-mule/homebrew-tools.git"

  def install
    libexec.install "bin", "lib", "README.md"
    bin.write_exec_script libexec/"bin/emt"
  end
    test do
      assert_match "1.4.50", shell_output("#{bin}/emt -V", 2)
    end
end
