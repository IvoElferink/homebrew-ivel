cask "multiviewer-for-f1-beta" do
  arch arm: "arm64", intel: "x64"

  on_intel do
    version "1.10.3,84271897"
    sha256 "adcaf5f8ccf1d997364ffaf310f0ef4909fce3172d8d84ad2b0494ad6454be92"
  end
  on_arm do
    version "1.10.3,84271516"
    sha256 "bac20bf8aebd1dfe7683f598b64af75eee8f7f3fcdc1ca763612f214ffea71d7"
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
