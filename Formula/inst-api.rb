class InstApi < Formula
  desc "A collection of wrappers for Instructure APIs"
  homepage "https://github.com/thedannywahl/inst-api"
  url "https://github.com/thedannywahl/inst-api/archive/v0.3.2.zip"
  sha256 "68890414b17b5bdacd77f589ee2443260e81836c92ae98b2726f31a490a4760b"

  def install
    bin.install Dir["arc/arc"], Dir["bridge/bridge"], Dir["canvas/canvas"], Dir["catalog/catalog"], Dir["commons/commons"]
  end

  def caveats; <<~EOS
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
