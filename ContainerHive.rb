class Containerhive < Formula
  desc "Swarm it. Build it. Run it"
  homepage "https://github.com/ContainerHive/ContainerHive"
  version "1.27.7"

  depends_on "zstd" => :build

  on_macos do
    on_arm do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.27.7/darwin-arm64.tar.zst"
      sha256 "13bfd12821608c889fe9a453291776e99c24a4ec968cf88d24a256474192d6ce"
    end
    on_intel do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.27.7/darwin-amd64.tar.zst"
      sha256 "b151b9eadea4d196a3505d640286bc8a22fe4e591886f3eb35c7242bef768ab9"
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
