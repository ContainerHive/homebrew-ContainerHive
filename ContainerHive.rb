class Containerhive < Formula
  desc "Swarm it. Build it. Run it"
  homepage "https://github.com/ContainerHive/ContainerHive"
  version "1.12.3"

  depends_on "zstd" => :build

  on_macos do
    on_arm do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.12.3/darwin-arm64.tar.zst"
      sha256 "e5d7a902eca8e9eff19dbe02d22201e51b412c3b0aaba95a82851fe85b019f55"
    end
    on_intel do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.12.3/darwin-amd64.tar.zst"
      sha256 "ab279732326c0dba85756c2de9f05b49325e59f2adb400bb832ea2cb8f0416c8"
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
