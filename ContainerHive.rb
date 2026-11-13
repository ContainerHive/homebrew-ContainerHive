class Containerhive < Formula
  desc "Swarm it. Build it. Run it"
  homepage "https://github.com/ContainerHive/ContainerHive"
  version "1.27.5"

  depends_on "zstd" => :build

  on_macos do
    on_arm do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.27.5/darwin-arm64.tar.zst"
      sha256 "fd9fdf61f904ca89ba15e81ec52e4a767c0ee904c3f133fb5bb62e6fb47fae72"
    end
    on_intel do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.27.5/darwin-amd64.tar.zst"
      sha256 "45967914ea27c4a3bf1393f1e7669df396c477df3afb46e9ee4c57f7ec56e9bd"
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
