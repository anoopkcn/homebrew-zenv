class Zenv < Formula
  desc "Python virtual environment manager for HPC and development systems"
  homepage "https://github.com/anoopkcn/zenv"
  version "0.33.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.33.3/zenv-aarch64-macos.tar.gz"
      sha256 "e9ccf2990dd59f98287d1eea69f766f7df5d7e52f8e3e9d35593b460c82ca8dc"
    end
    on_intel do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.33.3/zenv-x86_64-macos.tar.gz"
      sha256 "0ca6e2c953ed7edf316548512d9daafb29b6b718f8ea78a876a951fd81d53daf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.33.3/zenv-aarch64-linux-musl.tar.gz"
      sha256 "175dea61a94eabae6cea84618411479f9b108f997275d37a0501056534e9b12a"
    end
    on_intel do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.33.3/zenv-x86_64-linux-musl.tar.gz"
      sha256 "1bd651ae358ebab6e72892f7c9bb09350163cc11b94697e93e0281ef5c55e7b4"
    end
  end

  def install
    bin.install "zenv"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zenv --version")
  end
end
