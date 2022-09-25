require "formula"

class Emt < Formula
  desc "Enhanced Mule Tools CLI"
  homepage "https://www.enhanced-mule.com"
  url "https://repo1.maven.org/maven2/com/aeontronix/enhanced-mule/enhanced-mule-tools-cli/1.3.0-rc5/enhanced-mule-tools-cli-1.3.0-rc5-dist.tbz2"
  sha256 "aba7f38f70c0d71dceebc77f0c8b140e365b48dddbdcda78eaa8d9e6a65101be"
  head "https://github.com/enhanced-mule/homebrew-tools.git"

  def install
    libexec.install "bin", "lib", "README.md"
    bin.write_exec_script libexec / "bin/emt"
  end

  test do
    assert_match "1.3.0-rc5", shell_output("#{bin}/emt -V", 2)
  end
end
