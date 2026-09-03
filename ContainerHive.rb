class Containerhive < Formula
  desc "Swarm it. Build it. Run it"
  homepage "https://github.com/ContainerHive/ContainerHive"
  version "1.1.9"

  depends_on "zstd" => :build

  on_macos do
    on_arm do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.1.9/darwin-arm64.tar.zst"
      sha256 "3f44abf404ff122ae02c24ea3c9106ebb0c9b6a6fabda0077fca9a22fe8cd074"
    end
    on_intel do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.1.9/darwin-amd64.tar.zst"
      sha256 "680d6f885c0f30c57704d2a14eb1409b48778e6a2900a2bada71e20cd410b6bc"
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
