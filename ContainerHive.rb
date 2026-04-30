class ContainerHive < Formula
  desc "Swarm it. Build it. Run it"
  homepage "https://github.com/ContainerHive/ContainerHive"
  version "0.12.2"

  depends_on "zstd" => :build

  on_macos do
    on_arm do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v0.12.2/darwin-arm64.tar.zst"
      sha256 "3fb05c05e672deb850ab948274756a71449bad450ffee85be232d7f297137100"
    end
    on_intel do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v0.12.2/darwin-amd64.tar.zst"
      sha256 "6ca4c78e9959c8393025dc35baf11d3e98c50677e706f1600f2dbaf7bba9b4ad"
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
