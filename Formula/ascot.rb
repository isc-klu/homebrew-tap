class Ascot < Formula
  desc "Type checker and code intelligence engine for InterSystems ObjectScript"
  homepage "https://github.com/intersystems-community/ascot"
  url "https://github.com/intersystems-community/ascot/releases/download/v0.3.1/ascot-cli-universal-apple-darwin.tar.gz"
  sha256 "d516b74cc2568585b01ba5ab92b0eedba16aecea85c46165a288e3def9a54bf5"
  license any_of: ["MIT", "Apache-2.0"]

  depends_on :macos

  def install
    bin.install "ascot"
  end

  test do
    assert_match "ascot 0.3.1", shell_output("#{bin}/ascot --version")
  end
end
