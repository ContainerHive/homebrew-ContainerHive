class Containerhive < Formula
  desc "Swarm it. Build it. Run it"
  homepage "https://github.com/ContainerHive/ContainerHive"
  version "1.24.0"

  depends_on "zstd" => :build

  on_macos do
    on_arm do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.24.0/darwin-arm64.tar.zst"
      sha256 "a7ab4acb55c21e0b399ccda305b0bf273e90582500b4f24d6a977b366742c4ee"
    end
    on_intel do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.24.0/darwin-amd64.tar.zst"
      sha256 "d8c5a37d6a7e1bbf84ac8a7e057d387efc16e259f58ead46f31d992342331666"
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
