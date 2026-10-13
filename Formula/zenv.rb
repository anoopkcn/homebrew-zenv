class Zenv < Formula
  desc "Python virtual environment manager for HPC and development systems"
  homepage "https://github.com/anoopkcn/zenv"
  version "0.27.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.27.8/zenv-aarch64-macos-small.tar.gz"
      sha256 "d1264f2817ddd2f74ca01732cc4a4bc3d877498cdfa5dbc2f8f70954ef98070a"
    end
    on_intel do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.27.8/zenv-x86_64-macos-small.tar.gz"
      sha256 "a0ca72bccd18b693523c32f6f7ce1ba53268c5e050812c066be914b82cda9dc8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.27.8/zenv-aarch64-linux-musl-small.tar.gz"
      sha256 "63853cf6225f98cbd384a76c4af3dcf2152af8f61e7b35679014aeb21a9c1ef8"
    end
    on_intel do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.27.8/zenv-x86_64-linux-musl-small.tar.gz"
      sha256 "cac231b67abb721bcaf6af6b77ff5cf03bdd2ac7658bb9067622f6b0e2dcc590"
    end
  end

  def install
    bin.install "zenv"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zenv --version")
  end
end
