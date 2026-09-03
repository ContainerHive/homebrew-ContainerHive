class Containerhive < Formula
  desc "Swarm it. Build it. Run it"
  homepage "https://github.com/ContainerHive/ContainerHive"
  version "1.2.0"

  depends_on "zstd" => :build

  on_macos do
    on_arm do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.2.0/darwin-arm64.tar.zst"
      sha256 "df67e1ce263c19864c3bace65560375e3717e9de07fa6caa77e4412c9dc3fff9"
    end
    on_intel do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.2.0/darwin-amd64.tar.zst"
      sha256 "e95f560fe1de5f853fea0f0b6feaad3ec8f9a8866b3847fa2a9fa1a6528cb261"
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
