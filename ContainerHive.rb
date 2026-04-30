class ContainerHive < Formula
  desc "Swarm it. Build it. Run it"
  homepage "https://github.com/ContainerHive/ContainerHive"
  version "0.12.3"

  depends_on "zstd" => :build

  on_macos do
    on_arm do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v0.12.3/darwin-arm64.tar.zst"
      sha256 "4e69415f4f383a75d464789cfc6b06133ca9480bd28957732cfa3bad85a9cc01"
    end
    on_intel do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v0.12.3/darwin-amd64.tar.zst"
      sha256 "5dfd47968a071a1e9fb0b348c20d4f0918d6fd9bae9419a73ab4457f935e2774"
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
