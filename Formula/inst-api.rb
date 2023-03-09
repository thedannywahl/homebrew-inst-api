class InstApi < Formula
  desc "A collection of wrappers for Instructure APIs"
  homepage "https://github.com/thedannywahl/inst-api"
  url "https://github.com/thedannywahl/inst-api/archive/v1.1.2.zip"
  sha256 "060dc160e897831b04c259940b36d985402b208cd653cc0d6ed4e08f03be88e0"

  depends_on "jq"

  def install
    bin.install Dir["studio/studio"], Dir["canvas/canvas"], Dir["catalog/catalog"], Dir["cdata/cdata"], Dir["commons/commons"], Dir["insthelp/insthelp"]
  end

  def caveats; <<~EOS
      Installed binaries are: studio, canvas, catalog, cdata, commons, and insthelp
      User pref file is stored in ~/.inst
  EOS
  end

  test do
    system "#{bin}/studio -v"
    system "#{bin}/canvas -v"
    system "#{bin}/catalog -v"
    system "#{bin}/commons -v"
    system "#{bin}/cdata -v"
    system "#{bin}/insthelp version insthelp 1.0.0"
  end

end
