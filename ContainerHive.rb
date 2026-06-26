class Containerhive < Formula
  desc "Swarm it. Build it. Run it"
  homepage "https://github.com/ContainerHive/ContainerHive"
  version "0.21.9"

  depends_on "zstd" => :build

  on_macos do
    on_arm do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v0.21.9/darwin-arm64.tar.zst"
      sha256 "f31501deafc10877ae51b163fc5a530431a7751078a111047b849918528e240b"
    end
    on_intel do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v0.21.9/darwin-amd64.tar.zst"
      sha256 "8c2519920fa4ef32a2750a9c3560ab9b47a505d617a22b14195f5c65142ccfa9"
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
