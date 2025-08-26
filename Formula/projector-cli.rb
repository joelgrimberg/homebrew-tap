class ProjectorCli < Formula
  desc "A CLI application for project and action management"
  homepage "https://github.com/joelgrimberg/projector"
  version "0.3.13"
  license "MIT"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/joelgrimberg/projector/releases/download/v0.3.13/projector_darwin_arm64.tar.gz"
      sha256 "7fd1fc85f4bd5f3fabcf94db7dff1c129a1373af35b76cc5425a6baa49d20b89"
    else
      url "https://github.com/joelgrimberg/projector/releases/download/v0.3.13/projector_darwin_amd64.tar.gz"
      sha256 "e4242432dcbb6ecc0c5e05858fd8e7c0e8d4d1355ccde79dccac66516bd7378f"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/joelgrimberg/projector/releases/download/v0.3.13/projector_linux_arm64.tar.gz"
      sha256 "76ea69f8a827f5817f4af7aeba23395f9608f101a05e5a54daba4ed4aea7b38f"
    else
      url "https://github.com/joelgrimberg/projector/releases/download/v0.3.13/projector_linux_amd64.tar.gz"
      sha256 "0eee02b598beb74cd4f901be508cccb3c3d2ba944394cf20ba3702a1535319c4"
    end
  end
  
  def install
    bin.install "projector"
  end
  
  test do
    system "#{bin}/projector", "--version"
  end
end
