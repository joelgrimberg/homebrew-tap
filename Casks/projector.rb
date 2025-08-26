cask "projector" do
  version "0.2.2"
  sha256 "$(shasum -a 256 dist/projector_darwin_amd64.tar.gz | cut -d' ' -f1)"
  
  url "https://github.com/joelgrimberg/projector/releases/download/v#{version}/projector_darwin_amd64.tar.gz"
  name "Projector"
  desc "A CLI application for project and action management"
  homepage "https://github.com/joelgrimberg/projector"
  
  binary "projector"
end
