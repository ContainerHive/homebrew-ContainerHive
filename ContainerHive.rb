class Containerhive < Formula
  desc "Swarm it. Build it. Run it"
  homepage "https://github.com/ContainerHive/ContainerHive"
  version "1.27.6"

  depends_on "zstd" => :build

  on_macos do
    on_arm do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.27.6/darwin-arm64.tar.zst"
      sha256 "89db213cbbaeae2164d6c7f3bb66de6b1377e699f308c467cfd73923051a94fd"
    end
    on_intel do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.27.6/darwin-amd64.tar.zst"
      sha256 "eda9137ed06d3952bbba06c7331a839638469ee346a808caf11a84171377d0ae"
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
