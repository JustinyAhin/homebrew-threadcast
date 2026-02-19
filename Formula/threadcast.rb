class Threadcast < Formula
  desc "CLI tool for Threadcast"
  homepage "https://github.com/JustinyAhin/threadcast"
  version "0.0.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://releases.threadcast.dev/cli/v0.0.1/threadcast-darwin-arm64.tar.gz"
      sha256 "f10160dac04b8a662c9a10de426d2bfc339aa85b3ad75dd8b28ff7639f60683f"
    end

    on_intel do
      url "https://releases.threadcast.dev/cli/v0.0.1/threadcast-darwin-x64.tar.gz"
      sha256 "d956e19e5d819023d162e5d8fac3d4f21dac5a90009d91743ba902b3bc501e2b"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.threadcast.dev/cli/v0.0.1/threadcast-linux-arm64.tar.gz"
      sha256 "7f335eb9726a6b10796f6966b1b301fdb8d334f0da4819edbc85212071fef516"
    end

    on_intel do
      url "https://releases.threadcast.dev/cli/v0.0.1/threadcast-linux-x64.tar.gz"
      sha256 "58cd7b20a2c63aa07e7165005cb70db9b72441a605bbdf41a99a7bc0890b7e52"
    end
  end

  def install
    bin.install "threadcast"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/threadcast --version")
  end
end
