class Containerhive < Formula
  desc "Swarm it. Build it. Run it"
  homepage "https://github.com/ContainerHive/ContainerHive"
  version "1.27.4"

  depends_on "zstd" => :build

  on_macos do
    on_arm do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.27.4/darwin-arm64.tar.zst"
      sha256 "43d0c9203eee7396129a143e9a8de0c6cd90c369df7c9b44f2c0ec512fd24ca5"
    end
    on_intel do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.27.4/darwin-amd64.tar.zst"
      sha256 "7f2611d0bea54be8f257edfc81a1762afea533ba7ee5d1198fa14b4d6e14b47c"
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
