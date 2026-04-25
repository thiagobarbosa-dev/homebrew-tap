class Whatscli < Formula
  desc "WhatsApp Web CLI powered by Baileys"
  homepage "https://github.com/thiagobarbosa-dev/whatscli"
  url "https://github.com/thiagobarbosa-dev/whatscli/archive/refs/tags/v1.1.1.tar.gz"
  sha256 "4b9e21322f42e830e22e5c18ccd5ffcd00d6a585febc181cce74314ce0eca634"
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
