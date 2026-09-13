cask "inside-voice" do
  version "1.3.0"
  sha256 "b667bf7170aa249275d182e0c5085ecac65e6d40f4de877d556c9a7b9de7dae7"

  url "https://github.com/BillDX/InsideVoice/releases/download/v#{version}/InsideVoice.dmg"
  name "Inside Voice"
  desc "Push-to-talk dictation that runs entirely on-device"
  homepage "https://github.com/BillDX/InsideVoice"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Inside Voice.app"

  zap trash: [
    "~/Library/Application Support/Inside Voice",
    "~/Library/Preferences/com.thinkiac.InsideVoice.plist",
  ]

  caveats <<~EOS
    Inside Voice is signed with a local certificate and not yet notarized, so
    macOS may refuse to open it the first time. Either install with
    --no-quarantine, or run:
      xattr -dr com.apple.quarantine "/Applications/Inside Voice.app"
    or open it once, then System Settings > Privacy & Security > Open Anyway.
  EOS
end
