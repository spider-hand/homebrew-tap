class Recall < Formula
  desc "Find commands by describing what you want to do when you forget them"
  homepage "https://github.com/spider-hand/recall"
  version "1.0.1"

  on_macos do
    on_intel do
      url "https://github.com/spider-hand/recall/releases/download/v1.0.1/recall_darwin_amd64"
      sha256 "83eda4e4bb25aa4ba983b3d67bd78a39ae0d0ca6df7a4e627434b9a0daa63141"
    end
    on_arm do
      url "https://github.com/spider-hand/recall/releases/download/v1.0.1/recall_darwin_arm64"
      sha256 "b2e41a59b5a3defbac29857199e46ff364671bc82b73eeb59c723754524c7778"
    end
  end

  def install
    bin.install Dir["*"].first => "recall"
  end

  test do
    system "#{bin}/recall", "--version"
  end
end
