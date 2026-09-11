class Containerhive < Formula
  desc "Swarm it. Build it. Run it"
  homepage "https://github.com/ContainerHive/ContainerHive"
  version "1.8.0"

  depends_on "zstd" => :build

  on_macos do
    on_arm do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.8.0/darwin-arm64.tar.zst"
      sha256 "b051e6902f3dc80efdc7c6556b744eb38c64c52d308884b123a150d90698e28b"
    end
    on_intel do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.8.0/darwin-amd64.tar.zst"
      sha256 "b0ec1d32f27c984519b020ccd0571ca2898029326850df82ef1355c48bec3be9"
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
