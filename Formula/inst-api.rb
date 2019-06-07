class InstApi < Formula
  desc "A collection of wrappers for Instructure APIs"
  homepage "https://github.com/thedannywahl/inst-api"
  url "https://github.com/thedannywahl/inst-api/archive/v0.4.0.zip"
  sha256 "f5ebad6287071a0f99a691b452b2874602abda2d9c9da5798fa5ee115eca2358"

  def install
    bin.install Dir["studio/studio"], Dir["bridge/bridge"], Dir["canvas/canvas"], Dir["catalog/catalog"], Dir["data/cdata"], Dir["commons/commons"]
  end

  def caveats; <<~EOS
      Installed binaries are: studio, bridge, canvas, catalog, cdata, commons
      User pref file is stored in ~/.inst
  EOS
  end

  test do
    system "#{bin}/studio -v"
    system "#{bin}/bridge -v"
    system "#{bin}/canvas -v"
    system "#{bin}/catalog -v"
    system "#{bin}/commons -v"
    system "#{bin}/cdata -v"
  end

end
