class Containerhive < Formula
  desc "Swarm it. Build it. Run it"
  homepage "https://github.com/ContainerHive/ContainerHive"
  version "1.10.3"

  depends_on "zstd" => :build

  on_macos do
    on_arm do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.10.3/darwin-arm64.tar.zst"
      sha256 "3322b77a3e1e545c8f51998af6e89884a2d0cc46b319b94b3639afa674008041"
    end
    on_intel do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.10.3/darwin-amd64.tar.zst"
      sha256 "1620d4ec036ee1ceaae3afa947f17b2bad2b7132b8369ecece660340c95e5b55"
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
