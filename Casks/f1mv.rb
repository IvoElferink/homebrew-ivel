cask "f1mv" do
  version "1.8.5"
  sha256 "4665ac9ff2c7124136b356033fa9cbd581769d447a1e8641381b87c556a899b8"

  url "https://releases.f1mv.com/download/80314050/MultiViewer.for.F1-#{version}-universal.dmg"
  name "MultiViewer for F1"
  desc "MultiViewer for F1 beta - Experience F1TV® like never before"
  homepage "https://beta.f1mv.com"

  auto_updates true
  depends_on macos: ">= :monetery"

  app "MultiViewer for F1.app"

  zap trash: [
    "~/Library/Application Support/MultiViewer for F1",
    "~/Library/Preferences/com.electron.multiviewer-for-f1.plist",
    "~/Library/Saved Application State/com.electron.multiviewer-for-f1.savedState",
  ]
end
