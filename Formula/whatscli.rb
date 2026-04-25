class Whatscli < Formula
  desc "WhatsApp Web CLI powered by Baileys"
  homepage "https://github.com/thiagobarbosa-dev/whatscli"
  url "https://github.com/thiagobarbosa-dev/whatscli/archive/refs/tags/v0.8.6.tar.gz"
  sha256 "e16632821cafa5495844ab37329601092c1fd73d4d1b46cdca01cd79e036f880"
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
