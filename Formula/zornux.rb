class Zornux < Formula
  desc "The English-readable programming language"
  homepage "https://zornux.dev"
  version "1.0.0-rc.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/zornux/zornux/releases/download/v#{version}/zornux-#{version}-osx-arm64.tar.gz"
      sha256 "379f7fd46dee85efcb2c80b0ff981e70eb1c510ced2191ef09574ea5370127ad"
    end
    on_intel do
      url "https://github.com/zornux/zornux/releases/download/v#{version}/zornux-#{version}-osx-x64.tar.gz"
      sha256 "8f01ede81593e273471c5511d6afe97ce350ebe20e0391a585340fbd07e8b8f8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/zornux/zornux/releases/download/v#{version}/zornux-#{version}-linux-arm64.tar.gz"
      sha256 "4f128f026938ae5b3539ac58595671ef5194d91d1f767c0fab741805fbbd57a5"
    end
    on_intel do
      url "https://github.com/zornux/zornux/releases/download/v#{version}/zornux-#{version}-linux-x64.tar.gz"
      sha256 "cdb935f23665ef81a864752b7413d528acbaceb2f0deb52b4eac678084df6f00"
    end
  end

  def install
    bin.install "zornux"
  end

  test do
    assert_match "zornux", shell_output("#{bin}/zornux --version")
  end
end
