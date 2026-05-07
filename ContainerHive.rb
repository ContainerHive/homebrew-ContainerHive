class Containerhive < Formula
  desc "Swarm it. Build it. Run it"
  homepage "https://github.com/ContainerHive/ContainerHive"
  version "0.17.1"

  depends_on "zstd" => :build

  on_macos do
    on_arm do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v0.17.1/darwin-arm64.tar.zst"
      sha256 "53332d23a14b5aef1bfe977e887fa4edfa01a06f5318d5d90be864b7e5ee2d17"
    end
    on_intel do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v0.17.1/darwin-amd64.tar.zst"
      sha256 "dc8c94c41efe38dc28c56e9066d06e2826bf9b82b0322a6ca34949b574099c20"
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
