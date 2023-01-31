cask "multiviewer-for-f1-beta" do
  arch arm: "arm64", intel: "x64"

  on_intel do
    version "1.12.3,93471385"
    sha256 "77a91496a6265c00df49702b655679f44d0bc8698c5106d0f9bb46d65d6d3e4f"
  end
  on_arm do
    version "1.12.3,93470979"
    sha256 "f39a76be2b8348fb30b0c4b07519bf6cfe5c8873a5249c158a6fab1dd82b4f53"
  end

  url "https://releases.f1mv.com/download/#{version.csv.second}/MultiViewer.for.F1-#{version.csv.first}-#{arch}.dmg"
  name "MultiViewer for F1"
  desc "Experience F1TV® like never before"
  homepage "https://beta.f1mv.com/"

  auto_updates true
  conflicts_with cask: "multiviewer-for-f1"
  depends_on macos: ">= :monterey"

  app "MultiViewer for F1.app"

  zap trash: [
    "~/Library/Application Support/MultiViewer for F1",
    "~/Library/Preferences/com.electron.multiviewer-for-f1.plist",
    "~/Library/Saved Application State/com.electron.multiviewer-for-f1.savedState",
  ]
end
