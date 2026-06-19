class Zenv < Formula
  desc "Python virtual environment manager for HPC and development systems"
  homepage "https://github.com/anoopkcn/zenv"
  version "0.24.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.24.4/zenv-aarch64-macos-small.tar.gz"
      sha256 "ca5423e7e72b5f4dc88269591d033307a819474f9de13101c7d635b8620ccfd0"
    end
    on_intel do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.24.4/zenv-x86_64-macos-small.tar.gz"
      sha256 "cd1b643628adf38a99ed2d9a9f39b6dff272afd8e450b8621db4ae2259275946"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.24.4/zenv-aarch64-linux-musl-small.tar.gz"
      sha256 "4ef56752b4b8739c4e3115771358944bcbbd4e113fad251300b8da2bc213de70"
    end
    on_intel do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.24.4/zenv-x86_64-linux-musl-small.tar.gz"
      sha256 "1a6b6425f5343cc7247867f479403091e827645fd0d178bba06fbb57195c8eb1"
    end
  end

  def install
    bin.install "zenv"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zenv --version")
  end
end
