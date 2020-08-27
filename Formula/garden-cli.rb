class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"
  url "https://github.com/garden-io/garden/releases/download/v0.12.3/garden-v0.12.3-macos-amd64.tar.gz"
  version "0.12.3"
  sha256 "a1d7fa9b72ca568a921d98b254a7f94df90d62e0e9647f28cb89050d4349c4af"

  depends_on "rsync"

  def install
    libexec.install "garden", "fsevents.node", "static", "node_sqlite3.node"
    bin.install_symlink libexec/"garden"
  end

  test do
    # just make sure the command works
    system bin/"garden", "--help"
  end
end
