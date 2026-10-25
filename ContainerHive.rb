class Containerhive < Formula
  desc "Swarm it. Build it. Run it"
  homepage "https://github.com/ContainerHive/ContainerHive"
  version "1.21.0"

  depends_on "zstd" => :build

  on_macos do
    on_arm do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.21.0/darwin-arm64.tar.zst"
      sha256 "6c44444e227063f4cfe09d958d07d1ec6db8a4f34973c4d3ccf1875afa530d48"
    end
    on_intel do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.21.0/darwin-amd64.tar.zst"
      sha256 "cde7209d69a4f5646d5035f49cdab021aae122dff23a353277101a7bb22b3508"
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
