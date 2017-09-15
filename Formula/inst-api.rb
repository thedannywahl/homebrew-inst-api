class InstApi < Formula
  desc "A collection of wrappers for Instructure APIs"
  homepage "https://github.com/thedannywahl/inst-api"
  url "https://github.com/thedannywahl/inst-api/archive/v0.2.2.zip"
  sha256 "3e622dc3f7fc959d0c27203bb96d8b4335f248bd91eb2354ed575f33d5bfca87"

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
