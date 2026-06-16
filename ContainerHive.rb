class Containerhive < Formula
  desc "Swarm it. Build it. Run it"
  homepage "https://github.com/ContainerHive/ContainerHive"
  version "0.21.5"

  depends_on "zstd" => :build

  on_macos do
    on_arm do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v0.21.5/darwin-arm64.tar.zst"
      sha256 "78a5493e3620028c11b841dc76d9d1d14c9464274f0e44e887b7f6aea1282b39"
    end
    on_intel do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v0.21.5/darwin-amd64.tar.zst"
      sha256 "a38db93bc447af7e8e2ea272568d9f620a9d3932d66a0d0860d7dc1b18d70d32"
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
