class Zenv < Formula
  desc "Python virtual environment manager for HPC and development systems"
  homepage "https://github.com/anoopkcn/zenv"
  version "0.24.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.24.3/zenv-aarch64-macos-small.tar.gz"
      sha256 "5d5e681b88cf74e982954b4d6cf2f9d8d421a795f38e05270ba4172123170655"
    end
    on_intel do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.24.3/zenv-x86_64-macos-small.tar.gz"
      sha256 "2ccd88d672b0b83d38b1d5e2e306bcb4dd1cd1e46223c58fe87a031783a33134"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.24.3/zenv-aarch64-linux-musl-small.tar.gz"
      sha256 "2fc81dd35d7300fbc0af186e6248409ed8a9238bb7a6d4c7ccbd88be9f8c11e7"
    end
    on_intel do
      url "https://github.com/anoopkcn/zenv/releases/download/v0.24.3/zenv-x86_64-linux-musl-small.tar.gz"
      sha256 "22aa2e7642d9c8a74cd7aec0baaf1215aed8441e444cc5b3ebafafd6d04ea734"
    end
  end

  def install
    bin.install "zenv"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zenv --version")
  end
end
