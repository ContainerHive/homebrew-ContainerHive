class Containerhive < Formula
  desc "Swarm it. Build it. Run it"
  homepage "https://github.com/ContainerHive/ContainerHive"
  version "0.16.1"

  depends_on "zstd" => :build

  on_macos do
    on_arm do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v0.16.1/darwin-arm64.tar.zst"
      sha256 "c6a15a193687fe7053cb7b48c548e6ef4658ea87beb6189b409f2b454e5b2f66"
    end
    on_intel do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v0.16.1/darwin-amd64.tar.zst"
      sha256 "0db83712d76eed70e385aa0a814eedacfd7deab869fa078d193fd95f2ea1c9e8"
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
