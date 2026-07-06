class Zornux < Formula
  desc "The English-readable programming language"
  homepage "https://zornux.dev"
  version "1.0.0-rc.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/zornux/zornux/releases/download/v#{version}/zornux-#{version}-osx-arm64.tar.gz"
      sha256 "0980060941ed30249db728bd92f39d8d91d8079af1de23cd79998eb3bf10148a"
    end
    on_intel do
      url "https://github.com/zornux/zornux/releases/download/v#{version}/zornux-#{version}-osx-x64.tar.gz"
      sha256 "dbc2f57f57e54e516197435ad80f1b838ef75bbd0461a6f9789b176132144dac"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/zornux/zornux/releases/download/v#{version}/zornux-#{version}-linux-arm64.tar.gz"
      sha256 "f848afdfb50a3cb010e462f7086136f1c73fa68acfe6e1e274e0a03bc652b995"
    end
    on_intel do
      url "https://github.com/zornux/zornux/releases/download/v#{version}/zornux-#{version}-linux-x64.tar.gz"
      sha256 "c481edc0f36b65793cb8dad17d10fabd5ef6f7d07844dd097ce29e00b9f33011"
    end
  end

  def install
    bin.install "zornux"
  end

  test do
    assert_match "zornux", shell_output("#{bin}/zornux --version")
  end
end
