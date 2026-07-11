class Containerhive < Formula
  desc "Swarm it. Build it. Run it"
  homepage "https://github.com/ContainerHive/ContainerHive"
  version "0.21.15"

  depends_on "zstd" => :build

  on_macos do
    on_arm do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v0.21.15/darwin-arm64.tar.zst"
      sha256 "cbd7d38bef8ab4eea4eb5815153b4bb8c11a4c21db8448757b595fdbcfafeb8d"
    end
    on_intel do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v0.21.15/darwin-amd64.tar.zst"
      sha256 "bcea8312325aa6b9d2cc0c5745608c9059ee6f2ff8770ea0daa4841e6491238f"
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
