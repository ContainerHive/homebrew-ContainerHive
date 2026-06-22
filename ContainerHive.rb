class Containerhive < Formula
  desc "Swarm it. Build it. Run it"
  homepage "https://github.com/ContainerHive/ContainerHive"
  version "0.21.7"

  depends_on "zstd" => :build

  on_macos do
    on_arm do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v0.21.7/darwin-arm64.tar.zst"
      sha256 "fce405b77b619c047108c09f4afebf526453a50b2487fcd478d3b57c4451d742"
    end
    on_intel do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v0.21.7/darwin-amd64.tar.zst"
      sha256 "d5bfac6e885276c7e4400da8fea0f920bcb4593ed04144b7000440c19ec1581e"
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
