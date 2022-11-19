cask "multiviewer-for-f1-beta" do
  arch arm: "arm64", intel: "x64"

  on_intel do
    version "1.11.5,85035422"
    sha256 "b84e404707f089c8843878d0a0e121987ce2da49c03938e9a897795b2bc3780f"
  end
  on_arm do
    version "1.11.6,85211246"
    sha256 "242410e2f0e08800b911cfd9bd29ab49e0c2428f64b982246aa8ecd9d620062e"
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
