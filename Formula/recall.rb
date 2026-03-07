class Recall < Formula
  desc "Find commands by describing what you want to do when you forget them"
  homepage "https://github.com/spider-hand/recall"
  version "1.0.0"

  on_macos do
    on_intel do
      url "https://github.com/spider-hand/recall/releases/download/v1.0.0/recall_darwin_amd64"
      sha256 "06fad33556575c7995f783ab930be0b0ca5943643be66ea5f629187d9ea57084"
    end
    on_arm do
      url "https://github.com/spider-hand/recall/releases/download/v1.0.0/recall_darwin_arm64"
      sha256 "9893d2214ac949b16cee8f6633d8ff5b2a68ad8a9bc9a5aaf38f33a0ea46d9ef"
    end
  end

  def install
    bin.install Dir["*"].first => "recall"
  end

  test do
    system "#{bin}/recall", "--version"
  end
end
