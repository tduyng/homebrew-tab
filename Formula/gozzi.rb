class Gozzi < Formula
  desc "Simple static site generator written in Go"
  homepage "https://github.com/tduyng/gozzi"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tduyng/gozzi/releases/download/v#{version}/gozzi_#{version}_darwin_arm64.tar.gz"
      sha256 "5ca6e3da69fcf8ee2257fc461748c613466f9a4cc901fd3041faa84988a26785"
    else
      url "https://github.com/tduyng/gozzi/releases/download/v#{version}/gozzi_#{version}_darwin_amd64.tar.gz"
      sha256 "516f8613a44b695cb750a1894a1e059f2099c2354c91399d2743e4c059babb6d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tduyng/gozzi/releases/download/v#{version}/gozzi_#{version}_linux_arm64.tar.gz"
      sha256 "e2982e0ebdd58f7301739abcd9f4bef77e71d4b3e766ae84cd287f1a78bf464d"
    else
      url "https://github.com/tduyng/gozzi/releases/download/v#{version}/gozzi_#{version}_linux_amd64.tar.gz"
      sha256 "9ea5ad69106af8efff5fac99648d137927401d6f26bde8bd5fdfff552d5dd647"
    end
  end

  def install
    bin.install "gozzi"
  end

  test do
    assert_match "gozzi CLI", shell_output("#{bin}/gozzi --help")
  end
end
