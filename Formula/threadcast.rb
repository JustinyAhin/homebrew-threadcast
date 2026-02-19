class Threadcast < Formula
  desc "CLI tool for Threadcast"
  homepage "https://github.com/JustinyAhin/threadcast"
  version "0.0.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/JustinyAhin/threadcast/releases/download/cli-v0.0.1/threadcast-darwin-arm64.tar.gz"
      sha256 "cf6b6812d77e8c51da66c1de5d09523bf8fef40dade7ba30d91fa49d4fb9ed6e"
    end

    on_intel do
      url "https://github.com/JustinyAhin/threadcast/releases/download/cli-v0.0.1/threadcast-darwin-x64.tar.gz"
      sha256 "9d5bf98c1b9c7a3f518e8c5602f4aac621924efd9879b7ea5e2ba09f1dbdf060"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/JustinyAhin/threadcast/releases/download/cli-v0.0.1/threadcast-linux-arm64.tar.gz"
      sha256 "3a65251d7ed0aa626be18e30a7f160e6c64b8360a3bd972c010f4db496b0d446"
    end

    on_intel do
      url "https://github.com/JustinyAhin/threadcast/releases/download/cli-v0.0.1/threadcast-linux-x64.tar.gz"
      sha256 "d6f742faace6cd3d8c602d50299eae55908190e1d96683740daa1e89c920acb4"
    end
  end

  def install
    bin.install "threadcast"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/threadcast --version")
  end
end
