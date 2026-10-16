class Containerhive < Formula
  desc "Swarm it. Build it. Run it"
  homepage "https://github.com/ContainerHive/ContainerHive"
  version "1.12.6"

  depends_on "zstd" => :build

  on_macos do
    on_arm do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.12.6/darwin-arm64.tar.zst"
      sha256 "e535d2d76aa4fca5aef2beb82be377dba07fd25527b8f2a44de1aa04e4747d79"
    end
    on_intel do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.12.6/darwin-amd64.tar.zst"
      sha256 "1a17ce46113fb3817547ab61563b0fda469a448f5177ed8b694ef79d42e1b5ee"
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
