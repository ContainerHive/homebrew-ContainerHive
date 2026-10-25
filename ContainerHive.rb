class Containerhive < Formula
  desc "Swarm it. Build it. Run it"
  homepage "https://github.com/ContainerHive/ContainerHive"
  version "1.18.0"

  depends_on "zstd" => :build

  on_macos do
    on_arm do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.18.0/darwin-arm64.tar.zst"
      sha256 "de57802f6e8717622669412d75cb140d660b057acd10c62492784b1700246076"
    end
    on_intel do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.18.0/darwin-amd64.tar.zst"
      sha256 "cd47892fb0c63901305f5c23a0560a5d3196f456eed3b13fdd12c2057cc7714e"
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
