class Containerhive < Formula
  desc "Swarm it. Build it. Run it"
  homepage "https://github.com/ContainerHive/ContainerHive"
  version "0.18.0"

  depends_on "zstd" => :build

  on_macos do
    on_arm do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v0.18.0/darwin-arm64.tar.zst"
      sha256 "515ef117d2b2d1e939d344eff17642351f3de3ad00b75109ed9701189bfad2c8"
    end
    on_intel do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v0.18.0/darwin-amd64.tar.zst"
      sha256 "e602c0fb86c25df3edfdfdae4d94069c5f34714ff808dbe560b2021a99e4cdae"
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
