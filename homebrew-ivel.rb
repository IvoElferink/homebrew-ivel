class HomebrewIvel < Formula
  desc "Homebrew Tap by ivel"
  homepage "https://github.com/IvoElferink/homebrew-ivel"
  url "https://github.com/IvoElferink/homebrew-ivel/archive/refs/tags/v0.0.1.tar.gz"
  sha256 "1105e942b16fb03c38b6dc1bbd5802f53eefa3b9ea048a28b1296393eb848279"
  license "Apache-2.0"

  depends_on "yq"
  depends_on "gh"
  depends_on "jq"

  def install
    bin.install "homebrewivel"
    prefix.install "README.md"
    prefix.install "LICENSE"
  end
end
