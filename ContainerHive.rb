class Containerhive < Formula
  desc "Swarm it. Build it. Run it"
  homepage "https://github.com/ContainerHive/ContainerHive"
  version "0.16.0"

  depends_on "zstd" => :build

  on_macos do
    on_arm do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v0.16.0/darwin-arm64.tar.zst"
      sha256 "8fb4ab607d74b2880f81087ac6c77f41e12452ef95382516b9427838254d6480"
    end
    on_intel do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v0.16.0/darwin-amd64.tar.zst"
      sha256 "984ffd11d091c6b71b9b6741a06889051c38a8db0de812c7516c533a0f7b5f18"
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
