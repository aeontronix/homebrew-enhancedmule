require "formula"

class Emt < Formula
  desc "Enhanced Mule Tools CLI"
  homepage "https://www.enhanced-mule.com"
  url "https://repo1.maven.org/maven2/com/aeontronix/enhanced-mule/enhanced-mule-tools-cli/1.4.42/enhanced-mule-tools-cli-1.4.42-dist.tbz2"
  sha256 "689723027fe866627cbf1a25661bfecd9db13fef164e452fac8662565e3ea9f5"
  head "https://github.com/enhanced-mule/homebrew-tools.git"

  def install
    libexec.install "bin", "lib", "README.md"
    bin.write_exec_script libexec/"bin/emt"
  end
    test do
      assert_match "1.4.42", shell_output("#{bin}/emt -V", 2)
    end
end
