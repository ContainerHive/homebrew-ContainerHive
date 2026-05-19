class Containerhive < Formula
  desc "Swarm it. Build it. Run it"
  homepage "https://github.com/ContainerHive/ContainerHive"
  version "0.18.3"

  depends_on "zstd" => :build

  on_macos do
    on_arm do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v0.18.3/darwin-arm64.tar.zst"
      sha256 "ca9ed34d8f9b2e081a77019bac037950b48bf73dd25ba33448bc591b13e7f159"
    end
    on_intel do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v0.18.3/darwin-amd64.tar.zst"
      sha256 "a0b396545ade1e0393506938262d43f53f05ac4787f50845f427adb13c507ddc"
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
