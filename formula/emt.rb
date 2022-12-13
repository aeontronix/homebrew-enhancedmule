require "formula"

class Emt < Formula
  desc "Enhanced Mule Tools CLI"
  homepage "https://www.enhanced-mule.com"
  url "https://repo1.maven.org/maven2/com/aeontronix/enhanced-mule/enhanced-mule-tools-cli/1.4.12/enhanced-mule-tools-cli-1.4.12-dist.tbz2"
  sha256 "44b37576816853f08da20064ce4afb7214375c9ddfa3e37e80c7077a54c74a38"
  head "https://github.com/enhanced-mule/homebrew-tools.git"

  def install
    libexec.install "bin", "lib", "README.md"
    bin.write_exec_script libexec/"bin/emt"
  end
    test do
      assert_match "1.4.12", shell_output("#{bin}/emt -V", 2)
    end
end
