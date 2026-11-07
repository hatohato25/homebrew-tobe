cask "tobe" do
  version "0.2.3"
  sha256 "cead64d7dfeb5cb5ad271049f63c4b4f8b237d8dd286ad8dbb77b372ec6c9587"

  url "https://github.com/hatohato25/tobe/releases/download/v#{version}/Tobe-#{version}.zip"
  name "Tobe"
  desc "Keyboard-driven hint mode for every app"
  homepage "https://github.com/hatohato25/tobe"

  depends_on macos: :sequoia

  app "Tobe.app"

  zap trash: "~/Library/Preferences/io.github.hatohato25.tobe.plist"

  caveats <<~EOS
    Tobe is not notarized, so Gatekeeper blocks the first launch. See:
      https://github.com/hatohato25/tobe#first-launch-tobe-is-not-notarized
  EOS
end
