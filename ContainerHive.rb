class Containerhive < Formula
  desc "Swarm it. Build it. Run it"
  homepage "https://github.com/ContainerHive/ContainerHive"
  version "1.12.1"

  depends_on "zstd" => :build

  on_macos do
    on_arm do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.12.1/darwin-arm64.tar.zst"
      sha256 "5bdf7e2285a6ee2fcd24d4bafde45c40f311c1526998a0dbe3cc45b7f963d994"
    end
    on_intel do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.12.1/darwin-amd64.tar.zst"
      sha256 "8844180d76e14bb7b08579f5b7e28e510d35bcc358c542f3a4743d2809213cf2"
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
