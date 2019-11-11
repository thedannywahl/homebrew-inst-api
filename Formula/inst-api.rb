class InstApi < Formula
  desc "A collection of wrappers for Instructure APIs"
  homepage "https://github.com/thedannywahl/inst-api"
  url "https://github.com/thedannywahl/inst-api/archive/v1.1.1.zip"
  sha256 "0c4363ba968ffdfae7b71187189ee0dee1677f59bf631a7141f0021b22bdef64"

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
