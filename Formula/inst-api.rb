class InstApi < Formula
  desc "A collection of wrappers for Instructure APIs"
  homepage "https://github.com/thedannywahl/inst-api"
  url "https://github.com/thedannywahl/inst-api/archive/v0.2.3.zip"
  sha256 "2932208bad3e37c528d438155f20dbd8f6990bed81d1a504c3759017b5fcc3b5"

  def install
    bin.install Dir["arc/arc"], Dir["bridge/bridge"], Dir["canvas/canvas"], Dir["catalog/catalog"], Dir["commons/commons"]
  end

  def caveats
    <<-EOS.undent
      Installed binaries are: arc, bridge, canvas, catalog, commons
      User pref file is stored in ~/.inst
    EOS
  end

  test do
    system "#{bin}/arc -v"
    system "#{bin}/bridge -v"
    system "#{bin}/canvas -v"
    system "#{bin}/catalog -v"
    system "#{bin}/commons -v"
  end

end
