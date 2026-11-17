class Ascot < Formula
  desc "Type checker and code intelligence engine for InterSystems ObjectScript"
  homepage "https://github.com/intersystems-community/ascot"
  version "0.6.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    url "https://github.com/intersystems-community/ascot/releases/download/v0.6.0/ascot-cli-universal-apple-darwin.tar.gz"
    sha256 "4d8750d929d8b8de9252933a3c7f0e3ead1352456c8dd4aecb1f52e058137f13"
  end

  on_linux do
    on_intel do
      url "https://github.com/intersystems-community/ascot/releases/download/v0.6.0/ascot-cli-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "884cf7c0ba2c387e1d05f2a67c12f0abcad56c5dbbedfe6e06c0bb99c7d0e639"
    end
    on_arm do
      url "https://github.com/intersystems-community/ascot/releases/download/v0.6.0/ascot-cli-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b267a781f6f741073abd6ba50d4c04bbb962ba91659a048edd0226b4795a3820"
    end
  end

  def install
    bin.install "ascot"
  end

  test do
    assert_match "ascot 0.6.0", shell_output("#{bin}/ascot --version")
  end
end
