class Containerhive < Formula
  desc "Swarm it. Build it. Run it"
  homepage "https://github.com/ContainerHive/ContainerHive"
  version "1.7.3"

  depends_on "zstd" => :build

  on_macos do
    on_arm do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.7.3/darwin-arm64.tar.zst"
      sha256 "f6fc48168cd43cb2f9241ace0eca4ba2848324a941125e5d86da102fc8efa52e"
    end
    on_intel do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.7.3/darwin-amd64.tar.zst"
      sha256 "37287ab085951970659fdd3070b8bf089b3758ec71d0e36815f43d504c6d9edb"
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
