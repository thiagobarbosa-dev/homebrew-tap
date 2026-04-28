class Whatscli < Formula
  desc "WhatsApp Web CLI powered by Baileys"
  homepage "https://github.com/thiagobarbosa-dev/whatscli"
  url "https://github.com/thiagobarbosa-dev/whatscli/archive/refs/tags/v1.2.0.tar.gz"
  sha256 "ac8fc7de15770132016f5c49c8201a7450285652cfe1f08cde3805871b53b619"
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
