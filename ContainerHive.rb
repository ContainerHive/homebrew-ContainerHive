class Containerhive < Formula
  desc "Swarm it. Build it. Run it"
  homepage "https://github.com/ContainerHive/ContainerHive"
  version "1.8.1"

  depends_on "zstd" => :build

  on_macos do
    on_arm do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.8.1/darwin-arm64.tar.zst"
      sha256 "62e5589e75d8b8b992a2734f0b89ea9f1bcb0560a228c118ec683e9c0ffa4d9a"
    end
    on_intel do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.8.1/darwin-amd64.tar.zst"
      sha256 "a067b077a2be0bdcdeb39d35d94186f25fd00eec2c6b322e9a1793d21afb871e"
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
