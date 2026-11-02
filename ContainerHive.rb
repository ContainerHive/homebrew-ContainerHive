class Containerhive < Formula
  desc "Swarm it. Build it. Run it"
  homepage "https://github.com/ContainerHive/ContainerHive"
  version "1.27.2"

  depends_on "zstd" => :build

  on_macos do
    on_arm do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.27.2/darwin-arm64.tar.zst"
      sha256 "35cb998439c57087f0cf565c38e812df81d2155c144ca1badec80c5aafe57d25"
    end
    on_intel do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.27.2/darwin-amd64.tar.zst"
      sha256 "77a3c5f3278ab9c29f50cfc5edb299c6e3af6d9ca19e8d411309a8e3c3704445"
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
