class Containerhive < Formula
  desc "Swarm it. Build it. Run it"
  homepage "https://github.com/ContainerHive/ContainerHive"
  version "1.12.5"

  depends_on "zstd" => :build

  on_macos do
    on_arm do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.12.5/darwin-arm64.tar.zst"
      sha256 "a0efde933e8b77e3af71a57cac3afcedb110615477d471521bb79676bc7922af"
    end
    on_intel do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.12.5/darwin-amd64.tar.zst"
      sha256 "e3d921dfd9d1209eec5b9692190ded603c0b74393344a9706f603b09a6fdba6e"
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
