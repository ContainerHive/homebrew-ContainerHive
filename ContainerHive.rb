class Containerhive < Formula
  desc "Swarm it. Build it. Run it"
  homepage "https://github.com/ContainerHive/ContainerHive"
  version "2.0.0"

  depends_on "zstd" => :build

  on_macos do
    on_arm do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v2.0.0/darwin-arm64.tar.zst"
      sha256 "5e0cfb66358ce9c0ffe97b6a537c4442c89be9ff58b6130656f641a2c3a6b8bd"
    end
    on_intel do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v2.0.0/darwin-amd64.tar.zst"
      sha256 "cb0c0fd26ffc65f80286a9b0db00cd2fe5011c61099f73e13d9f8b313e57bf7a"
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
