class Zenv < Formula
  desc "Python virtual environment manager for HPC and development systems"
  homepage "https://github.com/anoopkcn/zenv"
  version "0.30.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.30.0/zenv-aarch64-macos.tar.gz"
      sha256 "fd930dcec49f149d8254a69f0ed0693c0397c187647898370c6c22244a59ab0d"
    end
    on_intel do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.30.0/zenv-x86_64-macos.tar.gz"
      sha256 "f06d53824387a50e46a18ffb424a8aac7086b873a20d7135c83fdcdaf6741626"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.30.0/zenv-aarch64-linux-musl.tar.gz"
      sha256 "ca39ecc5378b7c1b38fcf52abc2870c718c734889daba3b48727c77424eeb6d0"
    end
    on_intel do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.30.0/zenv-x86_64-linux-musl.tar.gz"
      sha256 "da6f5841911644393451a35cc0109ddbe0a2560af732ba3a6c011e28e03c3dcf"
    end
  end

  def install
    bin.install "zenv"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zenv --version")
  end
end
