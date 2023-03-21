require "formula"

class Emt < Formula
  desc "Enhanced Mule Tools CLI"
  homepage "https://www.enhanced-mule.com"
  url "https://repo1.maven.org/maven2/com/aeontronix/enhanced-mule/enhanced-mule-tools-cli/1.4.39/enhanced-mule-tools-cli-1.4.39-dist.tbz2"
  sha256 "92e1c402578ab6c10429b959a58cacab9aec765c93a021db70ee414f387e923e"
  head "https://github.com/enhanced-mule/homebrew-tools.git"

  def install
    libexec.install "bin", "lib", "README.md"
    bin.write_exec_script libexec/"bin/emt"
  end
    test do
      assert_match "1.4.39", shell_output("#{bin}/emt -V", 2)
    end
end
