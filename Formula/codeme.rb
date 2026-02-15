class Codeme < Formula
  desc "Private coding activity tracker, backend for codeme.nvim"
  homepage "https://github.com/tduyng/codeme"
  version "0.0.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tduyng/codeme/releases/download/v#{version}/codeme_#{version}_darwin_arm64.tar.gz"
      sha256 "a8f4ebb706d9d1fa5823913e20d4431cbbc2ad10ce5b2237e1af317821a173ac"
    else
      url "https://github.com/tduyng/codeme/releases/download/v#{version}/codeme_#{version}_darwin_amd64.tar.gz"
      sha256 "e70923062d0fcc21d73e480c7516b275bb9db7f97abf7eaff01ae26bd38bac3d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tduyng/codeme/releases/download/v#{version}/codeme_#{version}_linux_arm64.tar.gz"
      sha256 "e40a08e65da8ecc191720e7c1c50d35bc34336191f4e7246baf5d8f8a7f484cc"
    else
      url "https://github.com/tduyng/codeme/releases/download/v#{version}/codeme_#{version}_linux_amd64.tar.gz"
      sha256 "cc5cba950decd163bde79bc12c9136657357b4959aee3d7da337e345ee8b10a5"
    end
  end

  def install
    bin.install "codeme"
  end

  test do
    assert_match "Codeme CLI", shell_output("#{bin}/codeme --help")
  end
end
