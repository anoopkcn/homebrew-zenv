class Zenv < Formula
  desc "Python virtual environment manager for HPC and development systems"
  homepage "https://github.com/anoopkcn/zenv"
  version "0.27.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.27.4/zenv-aarch64-macos-small.tar.gz"
      sha256 "4d12987fd4b875445c19c27129ecfd1d2e35b5aae4d2fcd0f6369c9ae7f0c161"
    end
    on_intel do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.27.4/zenv-x86_64-macos-small.tar.gz"
      sha256 "39523908d23398c4dd43a53fc444da6717f940e09a93a89eaf5207430ab939f6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.27.4/zenv-aarch64-linux-musl-small.tar.gz"
      sha256 "b7dfce3beec7bd12abf6eeec65447ca4bbac805a2451d682e2cbc6b7c51721f7"
    end
    on_intel do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.27.4/zenv-x86_64-linux-musl-small.tar.gz"
      sha256 "f7cd1f215b6969e16ff061dd66415eb71b9daf5ced80427b70ee750f568ccab9"
    end
  end

  def install
    bin.install "zenv"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zenv --version")
  end
end
