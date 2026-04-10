# typed: false
# frozen_string_literal: true

class Things < Formula
  desc "Keyboard-driven task manager for the terminal"
  homepage "https://things.grimbergenv.nl"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://gitlab.com/joelgrimberg/things/-/releases/v#{version}/downloads/things_#{version}_darwin_amd64.tar.gz"
      sha256 "b90fce28941a641db297f16b70222e84c0d8404355352f73a93c3732244f8d8b"
    end
    on_arm do
      url "https://gitlab.com/joelgrimberg/things/-/releases/v#{version}/downloads/things_#{version}_darwin_arm64.tar.gz"
      sha256 "2d7096f5411e1fce7fb95610d08a8ace363e83a903c499625c1afafd7ed73e4a"
    end
  end

  on_linux do
    on_intel do
      url "https://gitlab.com/joelgrimberg/things/-/releases/v#{version}/downloads/things_#{version}_linux_amd64.tar.gz"
      sha256 "827f39af4fead0d222bb43d74d03379cd4f615ef1b1a252b1d04eca9372a6104"
    end
    on_arm do
      url "https://gitlab.com/joelgrimberg/things/-/releases/v#{version}/downloads/things_#{version}_linux_arm64.tar.gz"
      sha256 "a5492106158ef1d897337ccde9e57e0032b6c85941c10ff9145af948314d8301"
    end
  end

  def install
    bin.install "things"
  end

  test do
    assert_match "things", shell_output("#{bin}/things health 2>&1", 1)
  end
end
