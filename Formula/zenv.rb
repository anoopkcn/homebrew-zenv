class Zenv < Formula
  desc "Python virtual environment manager for HPC and development systems"
  homepage "https://github.com/anoopkcn/zenv"
  version "0.27.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.27.6/zenv-aarch64-macos-small.tar.gz"
      sha256 "c3b368f162e708ec9fd112d9907097cc05972876fb53fa04c7ac356bd6b239d8"
    end
    on_intel do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.27.6/zenv-x86_64-macos-small.tar.gz"
      sha256 "b2c8602c92121663e1447c3b6615125c196e87989898b656df8e5a12af15fe54"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.27.6/zenv-aarch64-linux-musl-small.tar.gz"
      sha256 "54de8cf469f939c1f6432043e09c13f8a5fddd8d1c1be742652551ddaf5a4a3d"
    end
    on_intel do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.27.6/zenv-x86_64-linux-musl-small.tar.gz"
      sha256 "667e4a4c1331daa4a2114bbc38704c3201d43383e5a17a8fa7b79699e519e1a5"
    end
  end

  def install
    bin.install "zenv"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zenv --version")
  end
end
