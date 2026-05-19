class Containerhive < Formula
  desc "Swarm it. Build it. Run it"
  homepage "https://github.com/ContainerHive/ContainerHive"
  version "0.19.0"

  depends_on "zstd" => :build

  on_macos do
    on_arm do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v0.19.0/darwin-arm64.tar.zst"
      sha256 "adb475c4b4fa7732b9cbd971e52f50e29ac9bfb8706f205ef42492b7552d23f3"
    end
    on_intel do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v0.19.0/darwin-amd64.tar.zst"
      sha256 "b04772e2821910aff4c09ca78ae9d3aaee0ba6973a361437621c1fcadef79306"
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
