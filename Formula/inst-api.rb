class InstApi < Formula
  desc "A collection of wrappers for Instructure APIs"
  homepage "https://github.com/thedannywahl/inst-api"
  url "https://github.com/thedannywahl/inst-api/archive/v1.0.1.zip"
  sha256 "43d8a325559e72d3e9eb9fb5970780a95e84bf2fab2e90c1a0238efa7efbb0d4"

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
