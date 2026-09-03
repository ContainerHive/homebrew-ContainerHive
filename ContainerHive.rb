class Containerhive < Formula
  desc "Swarm it. Build it. Run it"
  homepage "https://github.com/ContainerHive/ContainerHive"
  version "1.1.8"

  depends_on "zstd" => :build

  on_macos do
    on_arm do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.1.8/darwin-arm64.tar.zst"
      sha256 "bd8ac3902091e0cda668600353d39fb4be91823a5febd24e63823de5ef8a25f7"
    end
    on_intel do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.1.8/darwin-amd64.tar.zst"
      sha256 "806f91c689ee4492143225c2c9fb7bb5e031aab6709935c12fdb298194693fa3"
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
