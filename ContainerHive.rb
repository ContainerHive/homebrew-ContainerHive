class Containerhive < Formula
  desc "Swarm it. Build it. Run it"
  homepage "https://github.com/ContainerHive/ContainerHive"
  version "1.23.2"

  depends_on "zstd" => :build

  on_macos do
    on_arm do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.23.2/darwin-arm64.tar.zst"
      sha256 "bd973ae47451b77183762eb3809ad9f66bb85600d4e970a0027730ef533e218a"
    end
    on_intel do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.23.2/darwin-amd64.tar.zst"
      sha256 "1e2e8e1e21d1042fedcb2a1ec7cbd1aed3fd1269b8e723d8d8733c7fdd9c27d0"
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
