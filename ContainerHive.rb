class ContainerHive < Formula
  desc "Swarm it. Build it. Run it"
  homepage "https://github.com/ContainerHive/ContainerHive"
  version "0.12.4"

  depends_on "zstd" => :build

  on_macos do
    on_arm do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v0.12.4/darwin-arm64.tar.zst"
      sha256 "e8c0aa5d81cd026191d75cccd5bbd64e989f6428bd299c4406f185abdd1a00b7"
    end
    on_intel do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v0.12.4/darwin-amd64.tar.zst"
      sha256 "37f65ef0f2483d22efb7e69bf328f562ef0a6506c3f5297e496605dac9a8912a"
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
