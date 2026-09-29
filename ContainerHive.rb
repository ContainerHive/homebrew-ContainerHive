class Containerhive < Formula
  desc "Swarm it. Build it. Run it"
  homepage "https://github.com/ContainerHive/ContainerHive"
  version "1.8.4"

  depends_on "zstd" => :build

  on_macos do
    on_arm do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.8.4/darwin-arm64.tar.zst"
      sha256 "6e99fb2e27371aaa2372d6ee655f4e6951b7e7d2ad03e2f4caebec70b78d58c6"
    end
    on_intel do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.8.4/darwin-amd64.tar.zst"
      sha256 "f971d9531c5abdde7b7dae44fd491d87cd520fa2b708037fbbac3831f6405a4f"
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
