class Containerhive < Formula
  desc "Swarm it. Build it. Run it"
  homepage "https://github.com/ContainerHive/ContainerHive"
  version "0.19.6"

  depends_on "zstd" => :build

  on_macos do
    on_arm do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v0.19.6/darwin-arm64.tar.zst"
      sha256 "16e2240377301fc7d731c430f2a472b4cf491a594e87cbcc66f60d00e864750e"
    end
    on_intel do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v0.19.6/darwin-amd64.tar.zst"
      sha256 "1431b6a2d096e0688d7e72cfcc8947d797c4ee198dcb6cbbdcb6f1d8d3b923f8"
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
