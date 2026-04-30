class ContainerHive < Formula
  desc "Swarm it. Build it. Run it"
  homepage "https://github.com/ContainerHive/ContainerHive"
  version "0.12.6"

  depends_on "zstd" => :build

  on_macos do
    on_arm do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v0.12.6/darwin-arm64.tar.zst"
      sha256 "238da42c2f2c91d3cba611b06cc37307a963d3bc32cbab4262a1efeb0c4d6e99"
    end
    on_intel do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v0.12.6/darwin-amd64.tar.zst"
      sha256 "eb826fcac30205614e368440bf6d4ffa731649c55a190f354f320786dd26375a"
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
