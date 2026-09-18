cask "inside-voice" do
  version "1.5.0"
  sha256 "af634cc6b4d1f302425a23e868b7f46b4a66ee029e7af9e67acc26ee0b3b6e38"

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
end
