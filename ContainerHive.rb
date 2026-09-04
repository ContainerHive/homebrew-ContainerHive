class Containerhive < Formula
  desc "Swarm it. Build it. Run it"
  homepage "https://github.com/ContainerHive/ContainerHive"
  version "1.4.0"

  depends_on "zstd" => :build

  on_macos do
    on_arm do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.4.0/darwin-arm64.tar.zst"
      sha256 "661c6cc5d8073400e5d15784ce43ac2c5ab07fe78d63d46cb3e8fd0e9a2d4d79"
    end
    on_intel do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.4.0/darwin-amd64.tar.zst"
      sha256 "6f9848f264b1e365aa3995e621b0c5dce52bc24a97d8c5bb40f7d2a54deec105"
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
