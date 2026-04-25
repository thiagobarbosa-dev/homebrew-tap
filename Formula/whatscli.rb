class Whatscli < Formula
  desc "WhatsApp Web CLI powered by Baileys"
  homepage "https://github.com/thiagobarbosa-dev/whatscli"
  url "https://github.com/thiagobarbosa-dev/whatscli/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "2398eba4f2e31dd0acf5d7d3b4e5140168bac79c65beedf97d7da8f5f4061bb1"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install"
    system "npm", "run", "build"
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    system "#{bin}/whatscli", "--version"
  end
end
