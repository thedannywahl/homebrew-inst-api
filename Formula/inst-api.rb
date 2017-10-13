class InstApi < Formula
  desc "A collection of wrappers for Instructure APIs"
  homepage "https://github.com/thedannywahl/inst-api"
  url "https://github.com/thedannywahl/inst-api/archive/v0.3.0.zip"
  sha256 "8c0436825dca9267a47b70561093757a0dce032f88c4a30d034a1ce1d8342db9"

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
