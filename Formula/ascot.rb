class Ascot < Formula
  desc "Type checker and code intelligence engine for InterSystems ObjectScript"
  homepage "https://github.com/intersystems-community/ascot"
  version "0.7.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    url "https://github.com/intersystems-community/ascot/releases/download/v0.7.0/ascot-cli-universal-apple-darwin.tar.gz"
    sha256 "43f0cc92da3b9bb9065dd13eaa0375685d0dfa0750b45dab5ba9b49d71f98ccc"
  end

  on_linux do
    on_intel do
      url "https://github.com/intersystems-community/ascot/releases/download/v0.7.0/ascot-cli-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "97f833bbc083c8f298ce1d5c0d71d6eb055f447713d2d0f4cdbc52d31ce49a87"
    end
    on_arm do
      url "https://github.com/intersystems-community/ascot/releases/download/v0.7.0/ascot-cli-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "678aa82e5cd9d7c0740279e058283d7a0663fb3b06282423394b6c53cae15f8a"
    end
  end

  def install
    bin.install "ascot"
  end

  test do
    assert_match "ascot 0.7.0", shell_output("#{bin}/ascot --version")
  end
end
