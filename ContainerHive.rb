class Containerhive < Formula
  desc "Swarm it. Build it. Run it"
  homepage "https://github.com/ContainerHive/ContainerHive"
  version "1.24.2"

  depends_on "zstd" => :build

  on_macos do
    on_arm do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.24.2/darwin-arm64.tar.zst"
      sha256 "595fa5bb6815b5f8e2084cf5c8060c55c49aa9f439d34432de9e930dc4c58522"
    end
    on_intel do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.24.2/darwin-amd64.tar.zst"
      sha256 "73a5df666046efe8cda1cb89d45cd7119fe16627ad436cb0b8b929f1900fca15"
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
