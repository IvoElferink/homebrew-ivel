cask "syride-sys-pc-tool" do
  version "6.31"
  sha256 "1d3b9dc8a156aba4e973afbc591f7258e1544d5ae0851d2f044a0b9b4963b0ff"

  url "https://www.syride.com/downloads/SYS_PC_Tool_setup_mac-#{version}.pkg"
  name "Syride SYS PC Tool Software"
  desc "Syride SYS PC Tool Software - Necessary for downloading flights, customizing screens, upgrading instrument..."
  homepage "https://www.syride.com"

  auto_updates true
  depends_on macos: ">= :monterey"

  pkg "SYS_PC_TOOL_setup_mac-#{version}.pkg",
    choices: [
             ]

  uninstall pkgutil: [
                     ],
            delete: "/Applications/SYS_PC_TOOL.app"

  zap trash: [
    "~/Library/Saved Application State/Syride.SYS-PC-Tool.savedState",
             ]
end


