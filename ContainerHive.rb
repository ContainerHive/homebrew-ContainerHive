class Containerhive < Formula
  desc "Swarm it. Build it. Run it"
  homepage "https://github.com/ContainerHive/ContainerHive"
  version "1.12.0"

  depends_on "zstd" => :build

  on_macos do
    on_arm do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.12.0/darwin-arm64.tar.zst"
      sha256 "d4f196c490307e534530191cd67b8a39e36ac6243054ab19d55833290aa9a3de"
    end
    on_intel do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.12.0/darwin-amd64.tar.zst"
      sha256 "0882e3f6bbfc0624ab7d1c0db766ebd8efc369aab8125e4cc70c6c69ae08c716"
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
