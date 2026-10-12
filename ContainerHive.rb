class Containerhive < Formula
  desc "Swarm it. Build it. Run it"
  homepage "https://github.com/ContainerHive/ContainerHive"
  version "1.12.4"

  depends_on "zstd" => :build

  on_macos do
    on_arm do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.12.4/darwin-arm64.tar.zst"
      sha256 "961c8365c133887311627cae268d1d9f32feaf3a27ee1efc89f7fb5165801393"
    end
    on_intel do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.12.4/darwin-amd64.tar.zst"
      sha256 "32ab07ecefee17be698b3d30ca33669ab761ac2c12bae8305c182f84c67378ba"
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
