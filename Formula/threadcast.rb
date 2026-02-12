class Threadcast < Formula
  desc "CLI tool for Threadcast"
  homepage "https://github.com/JustinyAhin/threadcast"
  version "0.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/JustinyAhin/threadcast/releases/download/cli-v#{version}/threadcast-darwin-arm64.tar.gz"
      sha256 "PLACEHOLDER"
    end

    on_intel do
      url "https://github.com/JustinyAhin/threadcast/releases/download/cli-v#{version}/threadcast-darwin-x64.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/JustinyAhin/threadcast/releases/download/cli-v#{version}/threadcast-linux-arm64.tar.gz"
      sha256 "PLACEHOLDER"
    end

    on_intel do
      url "https://github.com/JustinyAhin/threadcast/releases/download/cli-v#{version}/threadcast-linux-x64.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  def install
    bin.install "threadcast"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/threadcast --version")
  end
end
