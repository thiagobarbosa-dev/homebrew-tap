class Whatscli < Formula
  desc "WhatsApp Web CLI powered by Baileys"
  homepage "https://github.com/thiagobarbosa-dev/whatscli"
  url "https://github.com/thiagobarbosa-dev/whatscli/archive/refs/tags/v0.8.5.tar.gz"
  sha256 "6a577a186499170bd62177a2226a096f9e302151f0e65236206949880859f228"
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
