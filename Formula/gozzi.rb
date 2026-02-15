class Gozzi < Formula
  desc "Simple static site generator written in Go"
  homepage "https://github.com/tduyng/gozzi"
  version "0.0.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tduyng/gozzi/releases/download/v#{version}/gozzi_#{version}_darwin_arm64.tar.gz"
      sha256 "REPLACE_DARWIN_ARM64"
    else
      url "https://github.com/tduyng/gozzi/releases/download/v#{version}/gozzi_#{version}_darwin_amd64.tar.gz"
      sha256 "REPLACE_DARWIN_AMD64"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tduyng/gozzi/releases/download/v#{version}/gozzi_#{version}_linux_arm64.tar.gz"
      sha256 "REPLACE_LINUX_ARM64"
    else
      url "https://github.com/tduyng/gozzi/releases/download/v#{version}/gozzi_#{version}_linux_amd64.tar.gz"
      sha256 "REPLACE_LINUX_AMD64"
    end
  end

  def install
    bin.install "gozzi"
  end

  test do
    assert_match "gozzi CLI", shell_output("#{bin}/gozzi --help")
  end
end
