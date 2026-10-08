class Containerhive < Formula
  desc "Swarm it. Build it. Run it"
  homepage "https://github.com/ContainerHive/ContainerHive"
  version "1.11.1"

  depends_on "zstd" => :build

  on_macos do
    on_arm do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.11.1/darwin-arm64.tar.zst"
      sha256 "dea00092eaf4ab884d89880fa58ec8b84c047354ab33e9448b44703e8ce4472b"
    end
    on_intel do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.11.1/darwin-amd64.tar.zst"
      sha256 "2b33355b44b24d506a9a25389df6a0de2aa22ffafa0a4e72192fa71cfbb4d67e"
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
