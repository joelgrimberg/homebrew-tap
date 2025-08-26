class ProjectorCli < Formula
  desc "A CLI application for project and action management"
  homepage "https://github.com/joelgrimberg/projector"
  version "0.3.14"
  license "MIT"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/joelgrimberg/projector/releases/download/v0.3.14/projector_darwin_arm64.tar.gz"
      sha256 "fa18afed3ce4d15225740e3840e50f069170e56b428b0837486080d813a117dd"
    else
      url "https://github.com/joelgrimberg/projector/releases/download/v0.3.14/projector_darwin_amd64.tar.gz"
      sha256 "ffbf97ba142dc518827f69570734e190ec4a180d0f7ca64a77e7547084021326"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/joelgrimberg/projector/releases/download/v0.3.14/projector_linux_arm64.tar.gz"
      sha256 "6ef9a22bc1f4ed8b3b91a89e9834ccc8d58ae0f56891faec3f784313cca69587"
    else
      url "https://github.com/joelgrimberg/projector/releases/download/v0.3.14/projector_linux_amd64.tar.gz"
      sha256 "5dddf67be2fd6fb191271b6844f40b5a421aa1ab588aa6baa1727d9399687582"
    end
  end
  
  def install
    bin.install "projector"
  end
  
  test do
    system "#{bin}/projector", "--version"
  end
end
