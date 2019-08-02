class InstApi < Formula
  desc "A collection of wrappers for Instructure APIs"
  homepage "https://github.com/thedannywahl/inst-api"
  url "https://github.com/thedannywahl/inst-api/archive/v1.0.0.zip"
  sha256 "da14e7c128c1f6a2f7088c00ef86ac8d910fbb31fc14cc602bbf193715aa93b9"

  depends_on "jq"

  def install
    bin.install Dir["studio/studio"], Dir["bridge/bridge"], Dir["canvas/canvas"], Dir["catalog/catalog"], Dir["cdata/cdata"], Dir["commons/commons"], Dir["insthelp/insthelp"]
  end

  def caveats; <<~EOS
      Installed binaries are: studio, bridge, canvas, catalog, cdata, commons, and insthelp
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
    system "#{bin}/insthelp version insthelp 1.0.0"
  end

end
