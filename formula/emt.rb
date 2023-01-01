require "formula"

class Emt < Formula
  desc "Enhanced Mule Tools CLI"
  homepage "https://www.enhanced-mule.com"
  url "https://repo1.maven.org/maven2/com/aeontronix/enhanced-mule/enhanced-mule-tools-cli/1.4.19/enhanced-mule-tools-cli-1.4.19-dist.tbz2"
  sha256 "b2601413fbf7787462ef870350deb3bc10b42e38604debc10cc696552bac557e"
  head "https://github.com/enhanced-mule/homebrew-tools.git"

  def install
    libexec.install "bin", "lib", "README.md"
    bin.write_exec_script libexec/"bin/emt"
  end
    test do
      assert_match "1.4.19", shell_output("#{bin}/emt -V", 2)
    end
end
