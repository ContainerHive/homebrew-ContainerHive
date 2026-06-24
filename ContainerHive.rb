class Containerhive < Formula
  desc "Swarm it. Build it. Run it"
  homepage "https://github.com/ContainerHive/ContainerHive"
  version "0.21.8"

  depends_on "zstd" => :build

  on_macos do
    on_arm do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v0.21.8/darwin-arm64.tar.zst"
      sha256 "29c6bd5194394d4e79a5f3205fe31c409ccb488c856f79f2dbb096ca01bd9fc7"
    end
    on_intel do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v0.21.8/darwin-amd64.tar.zst"
      sha256 "e6bb8aac69dde84e664d2dd2afabad6df965b312a904ed1c0917770152382e64"
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
