class Zenv < Formula
  desc "Python virtual environment manager for HPC and development systems"
  homepage "https://github.com/anoopkcn/zenv"
  version "0.28.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.28.0/zenv-aarch64-macos-small.tar.gz"
      sha256 "e4b873734851017b5f069f292f5ee23ead347e55f0a7619cf0945e540883e477"
    end
    on_intel do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.28.0/zenv-x86_64-macos-small.tar.gz"
      sha256 "49b3b75c1370bab28bf8bfc2994ecd1253e6b9d9e8fba8c917a76029928982e9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.28.0/zenv-aarch64-linux-musl-small.tar.gz"
      sha256 "ef109c8b4b4bd14d33b7bf62c8e479fa856dce40bf5a1427f8ab755a36e74f9a"
    end
    on_intel do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.28.0/zenv-x86_64-linux-musl-small.tar.gz"
      sha256 "f4ebb9d6e3ddad71f1b085e43f83ed535d4e0f22111f53a6aa89b8af0b9bfe28"
    end
  end

  def install
    bin.install "zenv"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zenv --version")
  end
end
