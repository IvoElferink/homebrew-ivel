cask "syride-sys-pc-tool" do
  version "6.33"
  sha256 "509e6b833c7fc907c3c0989704b941acba6f9d13abe5f0c20834ee4d77eb0c4f"

  url "https://www.syride.com/downloads/SYS_PC_Tool_setup_mac-#{version}.pkg"
  name "Syride SYS PC Tool Software"
  desc "Necessary for downloading flights, customizing screens, upgrading instrument"
  homepage "https://www.syride.com/"

  auto_updates true
  depends_on macos: ">= :sierra"

  pkg "SYS_PC_TOOL_setup_mac-#{version}.pkg",
      choices: []

  uninstall pkgutil: [],
            delete:  "/Applications/SYS-PC-Tool.app"

  zap trash: [
    "~/Library/Saved Application State/Syride.SYS-PC-Tool.savedState",
  ]
end
