class Containerhive < Formula
  desc "Swarm it. Build it. Run it"
  homepage "https://github.com/ContainerHive/ContainerHive"
  version "1.1.12"

  depends_on "zstd" => :build

  on_macos do
    on_arm do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.1.12/darwin-arm64.tar.zst"
      sha256 "5766dd1e063b17d5ccc1dbca14714ce3a6d25337068cc9efc23c08b8b5f6745c"
    end
    on_intel do
      url "https://github.com/ContainerHive/ContainerHive/releases/download/v1.1.12/darwin-amd64.tar.zst"
      sha256 "8487a452e624280f52363b0dd712bd7861463306652c869c85508d1cefdd7824"
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
