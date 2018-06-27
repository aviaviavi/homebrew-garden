require "language/node"

class GardenCli < Formula
  desc "A full-featured development framework for containers and serverless"
  homepage "https://github.com/garden-io/garden"
  url "https://registry.npmjs.org/garden-cli/-/garden-cli-0.2.0.tgz"
  sha256 "0ff9041c818f151c9407752ae808e86188bb26395d687eecb075170330c440dd"

  depends_on "node"
  depends_on "rsync"
  depends_on "watchman"
  depends_on "python" => :build

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    # add a meaningful test here
  end
end
