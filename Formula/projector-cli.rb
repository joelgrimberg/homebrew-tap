class ProjectorCli < Formula
  desc "A CLI application for project and action management"
  homepage "https://github.com/joelgrimberg/projector"
  version "0.3.9"
  license "MIT"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/joelgrimberg/projector/releases/download/v0.3.9/projector_darwin_arm64.tar.gz"
      sha256 "880a0ff3c8d3f51fd266ebc8a3efd7a26f2232201367e84a937230fbc36ef9e2"
    else
      url "https://github.com/joelgrimberg/projector/releases/download/v0.3.9/projector_darwin_amd64.tar.gz"
      sha256 "b05a5a11846510932d9d1bd6fcca346e0f38546ee7d94e968aed25b81fbcdf01"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/joelgrimberg/projector/releases/download/v0.3.9/projector_linux_arm64.tar.gz"
      sha256 "61815495428d45653df97c48d756e1874ff066aa7921090a57570eb656bd7526"
    else
      url "https://github.com/joelgrimberg/projector/releases/download/v0.3.9/projector_linux_amd64.tar.gz"
      sha256 "4d128d133d41fcac1c7b446d939148c2e9d46edd8b851b5a843aa254e89e05d7"
    end
  end
  
  def install
    bin.install "projector"
  end
  
  test do
    system "#{bin}/projector", "--version"
  end
end
