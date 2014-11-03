require "formula"

class Tst < Formula
  homepage "http://github.com/tendrilinc/support-tools"
  url "http://build:8081/nexus/content/groups/tendril/com/tendril/support-tools/3.3.0-SNAPSHOT/support-tools-3.3.0-20141030.202630-11-installer.zip"
  sha1 "9bb6785d25b062cb56c1f86b67a572df3f327839"

  def install
    configure-tst
    libexec.install Dir['*']
    bin.install_symlink Dir["#{libexec}/bin/tst"]
  end

  test do
    system "#{bin}/tst", "help"
  end
end
