class Zenv < Formula
  desc "Python virtual environment manager for HPC and development systems"
  homepage "https://github.com/anoopkcn/zenv"
  version "0.28.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.28.2/zenv-aarch64-macos-small.tar.gz"
      sha256 "097b283051cd52638d6757626c961187518fdff2fafe2924e34f134171979fe2"
    end
    on_intel do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.28.2/zenv-x86_64-macos-small.tar.gz"
      sha256 "7a649dacb0c6d4801dc83535d58189040332027d7106e47a4f97d95bf81e7b9a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.28.2/zenv-aarch64-linux-musl-small.tar.gz"
      sha256 "5e9351e6810d2e29fc9e648610f24e76627e44e398a80d8f5ac79d107fd5733b"
    end
    on_intel do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.28.2/zenv-x86_64-linux-musl-small.tar.gz"
      sha256 "0e9b4d3a03bb470916ac2e3a9d96cd8895f936fe34883b49a7493ea8e3211def"
    end
  end

  def install
    bin.install "zenv"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zenv --version")
  end
end
