class Containerhive < Formula
  desc "Swarm it. Build it. Run it"
  homepage "https://github.com/ContainerHive/ContainerHive"
  version "1.5.1"

  depends_on "zstd" => :build

  on_macos do
    on_arm do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.5.1/darwin-arm64.tar.zst"
      sha256 "2c4a27d8fb6a1323593ee4653a97911f8d5cbfc04c5187e3086a6e938e553e30"
    end
    on_intel do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.5.1/darwin-amd64.tar.zst"
      sha256 "c2bb7df3ac09449ad2c87427176c9ff0ba40e81789d8ae231848fd94ce405d2f"
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
