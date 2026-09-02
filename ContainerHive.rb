class Containerhive < Formula
  desc "Swarm it. Build it. Run it"
  homepage "https://github.com/ContainerHive/ContainerHive"
  version "1.1.3"

  depends_on "zstd" => :build

  on_macos do
    on_arm do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.1.3/darwin-arm64.tar.zst"
      sha256 "2989d44bafd4d36596abd54e3c96e9217cad9288b707493f3b3ed963076c5757"
    end
    on_intel do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.1.3/darwin-amd64.tar.zst"
      sha256 "d135d3b7a07fef6dd0344c918bd7f27a16c517035cf4bd5a2da25c6ce73d368f"
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
