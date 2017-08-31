class InstApi < Formula
  desc "A collection of wrappers for Instructure APIs"
  homepage "https://github.com/thedannywahl/inst-api"
  url "https://github.com/thedannywahl/inst-api/archive/v0.1.zip"
  sha256 "1169cd992084028d73e3fc253b39674655f11f7a8e559e7905ace3f4b7d4ba9a"

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
