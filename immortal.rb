class Immortal < Formula
  desc "A rule engine with self-healing capabilities"
  homepage "https://github.com/Nagendhra-web/Immortal"
  url "https://github.com/Nagendhra-web/Immortal/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "6e32a95fb17361799ea711d0433a072b8fbdfaf9398776eb8160f6b0ec3004d9"
  license "MIT"
  version "0.2.0"
  head "https://github.com/Nagendhra-web/Immortal.git", branch: "main"

  depends_on "go" => :build

  def install
    system "make", "build"
    bin.install "bin/immortal"
  end

  test do
    system "#{bin}/immortal", "--version"
  end
end
