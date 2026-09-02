class Containerhive < Formula
  desc "Swarm it. Build it. Run it"
  homepage "https://github.com/ContainerHive/ContainerHive"
  version "1.1.4"

  depends_on "zstd" => :build

  on_macos do
    on_arm do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.1.4/darwin-arm64.tar.zst"
      sha256 "a713645176425115af156c11e89dff4f16a081ecdb147d0358c1a61a28da8748"
    end
    on_intel do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.1.4/darwin-amd64.tar.zst"
      sha256 "76a041b9e260eaf0eedee30fb9b55ce2a5a13a6e85d79e0491af184da963cd0e"
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
