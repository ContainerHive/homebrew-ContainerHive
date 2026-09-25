class Containerhive < Formula
  desc "Swarm it. Build it. Run it"
  homepage "https://github.com/ContainerHive/ContainerHive"
  version "1.8.3"

  depends_on "zstd" => :build

  on_macos do
    on_arm do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.8.3/darwin-arm64.tar.zst"
      sha256 "f80d54856352159a87e9fd7ebcb72d7666b243dce706bd5b086913d99a33862f"
    end
    on_intel do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.8.3/darwin-amd64.tar.zst"
      sha256 "d168a872e85aa776cabe35f91e236abca4e6e065f932c30290e1f497145f537f"
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
