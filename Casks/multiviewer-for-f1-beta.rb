cask "multiviewer-for-f1-beta" do
  arch arm: "arm64", intel: "x64"

  on_intel do
    version "1.10.3,84271897"
    sha256 "adcaf5f8ccf1d997364ffaf310f0ef4909fce3172d8d84ad2b0494ad6454be92"
  end
  on_arm do
    version "1.10.3,84271516"
    sha256 "b1754026ca55069f80f6e8e0ce20dd304f48178e7cb660b46aa53ca7c06e203e"
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
