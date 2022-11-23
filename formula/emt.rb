require "formula"

class Emt < Formula
  desc "Enhanced Mule Tools CLI"
  homepage "https://www.enhanced-mule.com"
  url "https://repo1.maven.org/maven2/com/aeontronix/enhanced-mule/enhanced-mule-tools-cli/1.4.5/enhanced-mule-tools-cli-1.4.5-dist.tbz2"
  sha256 "66dd4a543702d554ff1605d10006beb9c6229a44d1e0c113d479aa69da75b7ed"
  head "https://github.com/enhanced-mule/homebrew-tools.git"

  def install
    libexec.install "bin", "lib", "README.md"
    bin.write_exec_script libexec/"bin/emt"
  end
    test do
      assert_match "1.4.5", shell_output("#{bin}/emt -V", 2)
    end
end
