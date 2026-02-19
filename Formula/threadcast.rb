class Threadcast < Formula
  desc "CLI tool for Threadcast"
  homepage "https://github.com/JustinyAhin/threadcast"
  version "0.0.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://releases.threadcast.dev/cli/v0.0.2/threadcast-darwin-arm64.tar.gz"
      sha256 "0e74be85c5e66037a7cd6edb3c2f9f995b3aba4beb0bf4b68bccbf88f9697560"
    end

    on_intel do
      url "https://releases.threadcast.dev/cli/v0.0.2/threadcast-darwin-x64.tar.gz"
      sha256 "0b2c0b8ab124b85e520a61eb966294e838bf4e7bf0cc1b8ee827ee5dc2f4a8ae"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.threadcast.dev/cli/v0.0.2/threadcast-linux-arm64.tar.gz"
      sha256 "be421747c274dc00b5628da18aee3a9bc017689ff330357372bc254143d8f636"
    end

    on_intel do
      url "https://releases.threadcast.dev/cli/v0.0.2/threadcast-linux-x64.tar.gz"
      sha256 "820657d1657588486c169a1f7da924ea2e7ae0aec11e245ef55c7bdc6a5f68a3"
    end
  end

  def install
    bin.install "threadcast"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/threadcast --version")
  end
end
