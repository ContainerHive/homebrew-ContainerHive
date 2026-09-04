class Containerhive < Formula
  desc "Swarm it. Build it. Run it"
  homepage "https://github.com/ContainerHive/ContainerHive"
  version "1.3.2"

  depends_on "zstd" => :build

  on_macos do
    on_arm do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.3.2/darwin-arm64.tar.zst"
      sha256 "41ff9413a0776e0419cd0b3dbe5621fc8c33f03db23203c0a75e1bb3bc8bf983"
    end
    on_intel do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.3.2/darwin-amd64.tar.zst"
      sha256 "31f2aeb37f7d2cd9fe958ae5fdf0302a3ecdafe06dd4ee717e1864d173884a02"
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
