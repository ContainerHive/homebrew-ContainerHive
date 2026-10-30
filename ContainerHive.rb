class Containerhive < Formula
  desc "Swarm it. Build it. Run it"
  homepage "https://github.com/ContainerHive/ContainerHive"
  version "1.27.0"

  depends_on "zstd" => :build

  on_macos do
    on_arm do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.27.0/darwin-arm64.tar.zst"
      sha256 "7f129e0b2676b1dfd92e83823faf2e73f49d0f7e23ffbf2449aae33ecf442f08"
    end
    on_intel do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.27.0/darwin-amd64.tar.zst"
      sha256 "5c15ce05b1c7bb826481250f41d28be56e0fc590ec4a903c697b82f50f546a20"
    end
  end

  def install
    bin.install "ch"
    prefix.install "LICENSE.txt", "NOTICE"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ch --version")
  end
end
