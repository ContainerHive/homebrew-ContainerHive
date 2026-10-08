class Containerhive < Formula
  desc "Swarm it. Build it. Run it"
  homepage "https://github.com/ContainerHive/ContainerHive"
  version "1.11.0"

  depends_on "zstd" => :build

  on_macos do
    on_arm do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.11.0/darwin-arm64.tar.zst"
      sha256 "892eb229621a7df20ad46d331bcd49cb7a18d1118e3f06f6cbf76be14eee0f58"
    end
    on_intel do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.11.0/darwin-amd64.tar.zst"
      sha256 "eca326dfd3a7794639613ee27c33000640f982021e8e1aa517b68eedbb48481a"
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
