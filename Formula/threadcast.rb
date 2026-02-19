class Threadcast < Formula
  desc "CLI tool for Threadcast"
  homepage "https://github.com/JustinyAhin/threadcast"
  version "0.0.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://releases.threadcast.dev/cli/v0.0.1/threadcast-darwin-arm64.tar.gz"
      sha256 "9c6368e02db6c4b87d3fad5f77fd9a06d3970d0bdcd46a22e5431b2573b9973a"
    end

    on_intel do
      url "https://releases.threadcast.dev/cli/v0.0.1/threadcast-darwin-x64.tar.gz"
      sha256 "9f7ab7d1dddf05226aa86c549f7d6f7c6de8481da810ccc2d0167a18e8bf5f3d"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.threadcast.dev/cli/v0.0.1/threadcast-linux-arm64.tar.gz"
      sha256 "fb0323c65a716b7b01c6dc3d8434921ec03189726e5510fb78e6b5634974d084"
    end

    on_intel do
      url "https://releases.threadcast.dev/cli/v0.0.1/threadcast-linux-x64.tar.gz"
      sha256 "d5cc8dcc5379199286e2b3ec15608eb12d59180f2c2821ca3c72fe3be2ff8dad"
    end
  end

  def install
    bin.install "threadcast"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/threadcast --version")
  end
end
