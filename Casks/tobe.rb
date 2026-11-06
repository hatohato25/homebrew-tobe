cask "tobe" do
  version "0.2.0"
  sha256 "8653270358941e26b64ad067a82d8653690cb7c83174287e0c0a46849a905e82"

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
