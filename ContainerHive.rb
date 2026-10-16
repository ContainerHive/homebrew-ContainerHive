class Containerhive < Formula
  desc "Swarm it. Build it. Run it"
  homepage "https://github.com/ContainerHive/ContainerHive"
  version "1.12.7"

  depends_on "zstd" => :build

  on_macos do
    on_arm do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.12.7/darwin-arm64.tar.zst"
      sha256 "e11caf0ecfca3bbca53c60a2a915ac8e6040e56f2de3ed1f1f36145037c9b486"
    end
    on_intel do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.12.7/darwin-amd64.tar.zst"
      sha256 "d0fc1920e5e0bc2316384bf82bba794ff75bb5cc15f95557ea463806c81e5ca0"
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
