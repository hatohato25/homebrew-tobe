cask "tobe" do
  version "0.2.2"
  sha256 "66e82377340f199f8c7cd11b0a0421750cb80a50dc1aa648486dbe77e60ac473"

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
