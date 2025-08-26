class ProjectorCli < Formula
  desc "A CLI application for project and action management"
  homepage "https://github.com/joelgrimberg/projector"
  version "0.2.9"
  license "MIT"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/joelgrimberg/projector/releases/download/v#{version}/projector_darwin_arm64.tar.gz"
      sha256 "$(shasum -a 256 dist/projector_darwin_arm64.tar.gz | cut -d' ' -f1)"
    else
      url "https://github.com/joelgrimberg/projector/releases/download/v#{version}/projector_darwin_amd64.tar.gz"
      sha256 "$(shasum -a 256 dist/projector_darwin_amd64.tar.gz | cut -d' ' -f1)"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/joelgrimberg/projector/releases/download/v#{version}/projector_linux_arm64.tar.gz"
      sha256 "$(shasum -a 256 dist/projector_linux_arm64.tar.gz | cut -d' ' -f1)"
    else
      url "https://github.com/joelgrimberg/projector/releases/download/v#{version}/projector_linux_amd64.tar.gz"
      sha256 "$(shasum -a 256 dist/projector_linux_amd64.tar.gz | cut -d' ' -f1)"
    end
  end
  
  def install
    bin.install "projector"
  end
  
  test do
    system "#{bin}/projector", "--version"
  end
end
