class Containerhive < Formula
  desc "Swarm it. Build it. Run it"
  homepage "https://github.com/ContainerHive/ContainerHive"
  version "1.16.0"

  depends_on "zstd" => :build

  on_macos do
    on_arm do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.16.0/darwin-arm64.tar.zst"
      sha256 "2f50b2b6fa10c300023740c5bba48178605790bf0b83c8e650e00205b83c8a1c"
    end
    on_intel do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.16.0/darwin-amd64.tar.zst"
      sha256 "467160bb8f80967d1a998a11d42bb2e59d1b996b7efeaffba61c309deb7ff47c"
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
