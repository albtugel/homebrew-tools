class Xct < Formula
  desc "Automation scripts for Xcode projects"
  homepage "https://github.com/albtugel/xcode-cli-tools"
  url "https://github.com/albtugel/xcode-cli-tools/archive/refs/tags/v1.0.4.tar.gz"
  sha256 "a726816b70aeb3cabd64ebd05414e47f662df78bc001637ed6ba111b07803957"
  license "MIT"

  def install

    bin.install "OpenXcodeProj.zsh" => "xproj"
    bin.install "RunXcodeProj.zsh" => "xrun"
    bin.install "TestXcodeProj.zsh" => "xtest"
    bin.install "CleanXcodeProj.zsh" => "xclean"
    bin.install "DropXcodeProj.zsh" => "xdrop"
  end

  test do
    system "#{bin}/xproj", "--version"
  end
end