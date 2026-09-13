class Godo < Formula
  desc "Thin repo command catalog"
  homepage "https://github.com/MY-RV/godo"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/MY-RV/godo/releases/download/v0.1.0/godo_0.1.0_darwin_arm64.tar.gz"
      sha256 "0dcc1b0131ceb150db283c51727b81062de1dd252cbe7aa4b872f671f0028798"
    end
    on_intel do
      url "https://github.com/MY-RV/godo/releases/download/v0.1.0/godo_0.1.0_darwin_amd64.tar.gz"
      sha256 "a0c04a35318e3347aa701e00a8720ead421249ff2cf88d7578bbdf7162a18645"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/MY-RV/godo/releases/download/v0.1.0/godo_0.1.0_linux_arm64.tar.gz"
      sha256 "328353dbe112f3b6230bc05a65f648ad3a9b1ee30be6b84130cce3f43ca156e0"
    end
    on_intel do
      url "https://github.com/MY-RV/godo/releases/download/v0.1.0/godo_0.1.0_linux_amd64.tar.gz"
      sha256 "b4ca8cf45214a8e3fff3fe52c378901356615fed626fd8e404f5b05ab895f4ad"
    end
  end

  def install
    bin.install "godo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/godo --version")
  end
end
