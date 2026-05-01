class ContainerHive < Formula
  desc "Swarm it. Build it. Run it"
  homepage "https://github.com/ContainerHive/ContainerHive"
  version "0.13.0"

  depends_on "zstd" => :build

  on_macos do
    on_arm do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v0.13.0/darwin-arm64.tar.zst"
      sha256 "77a346a96560aab69e968d41c59754bb3370146fdf0c632b6519694ccbd9a2e2"
    end
    on_intel do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v0.13.0/darwin-amd64.tar.zst"
      sha256 "97717f7c25f0fc2e4a160a88594e9b79975cecdf261cf1739fe82ccaa93070b8"
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
