class Containerhive < Formula
  desc "Swarm it. Build it. Run it"
  homepage "https://github.com/ContainerHive/ContainerHive"
  version "0.20.1"

  depends_on "zstd" => :build

  on_macos do
    on_arm do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v0.20.1/darwin-arm64.tar.zst"
      sha256 "f886d60086f4dc9bbca56bffadeae1223da37150fcfd5f793df78672bf4c7777"
    end
    on_intel do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v0.20.1/darwin-amd64.tar.zst"
      sha256 "6134cca13d68d921da134978de1ec88f7d9b7e22aec52eef1ba67584699abdb4"
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
