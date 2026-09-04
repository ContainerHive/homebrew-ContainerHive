class Containerhive < Formula
  desc "Swarm it. Build it. Run it"
  homepage "https://github.com/ContainerHive/ContainerHive"
  version "1.3.1"

  depends_on "zstd" => :build

  on_macos do
    on_arm do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.3.1/darwin-arm64.tar.zst"
      sha256 "e9d50aa10647a205dd2e5b49a3506682f6e4e40ddd8a79da5c693801f20611b8"
    end
    on_intel do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.3.1/darwin-amd64.tar.zst"
      sha256 "923a84ef83258224d42ca81f5944a2480499bebcd68b80b1a61c3d958a4d8bac"
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
