cask "f1mv" do
  version "1.8.5"
  sha256 "4665ac9ff2c7124136b356033fa9cbd581769d447a1e8641381b87c556a899b8"

  url "https://releases.f1mv.com/download/80314050/MultiViewer.for.F1-#{version}-universal.dmg"
  name "MultiViewer for F1"
  desc "MultiViewer for F1 beta - Experience F1TV® like never before"
  homepage "https://beta.f1mv.com"

  livecheck do
    url :url
    strategy :page_match
    regex(%r{href=.*?/download/.*?/MultiViewer.for.F1--(\d+(?:\.\d+)*)\.dmg}i)
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "MultiViewer for F1.app"
end
