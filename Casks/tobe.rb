cask "tobe" do
  version "0.2.4"
  sha256 "8f846b36b5f0e0484a8ef27131150bc5e2347d51e8714d8ed72783da44f943e5"

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
