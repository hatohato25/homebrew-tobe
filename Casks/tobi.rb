cask "tobi" do
  version "0.1.0"
  sha256 "d052898d751bdde5a06ac35dc814cc0db00b87e46b06a3746338015d18e9ad13"

  url "https://github.com/hatohato25/tobi/releases/download/v#{version}/Tobi-#{version}.zip"
  name "Tobi"
  desc "Keyboard-driven hint mode for every app"
  homepage "https://github.com/hatohato25/tobi"

  depends_on macos: :golden_gate

  app "Tobi.app"

  zap trash: "~/Library/Preferences/io.github.hatohato25.tobi.plist"

  caveats <<~EOS
    Tobi is not notarized, so Gatekeeper blocks the first launch. See:
      https://github.com/hatohato25/tobi#first-launch-tobi-is-not-notarized
  EOS
end
