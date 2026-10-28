class Containerhive < Formula
  desc "Swarm it. Build it. Run it"
  homepage "https://github.com/ContainerHive/ContainerHive"
  version "1.25.0"

  depends_on "zstd" => :build

  on_macos do
    on_arm do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.25.0/darwin-arm64.tar.zst"
      sha256 "5b80740a8ed1d25296387d0de02100cb29f06a1b48d8b6c8dfe2637fc54d49f1"
    end
    on_intel do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.25.0/darwin-amd64.tar.zst"
      sha256 "2db22eab00d642d92070ce2711ca525e6b59f0c47094c01db3f0254292c0eeb1"
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
