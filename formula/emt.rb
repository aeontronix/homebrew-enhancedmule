require "formula"

class Emt < Formula
  desc "Enhanced Mule Tools CLI"
  homepage "https://www.enhanced-mule.com"
  url "https://repo1.maven.org/maven2/com/aeontronix/enhanced-mule/enhanced-mule-tools-cli/1.4.45/enhanced-mule-tools-cli-1.4.45-dist.tbz2"
  sha256 "c3d6578fa3b51c6e4ab36e049542ef6e5f9d82e254e02e99a8466aa03c59ba1c"
  head "https://github.com/enhanced-mule/homebrew-tools.git"

  def install
    libexec.install "bin", "lib", "README.md"
    bin.write_exec_script libexec/"bin/emt"
  end
    test do
      assert_match "1.4.45", shell_output("#{bin}/emt -V", 2)
    end
end
