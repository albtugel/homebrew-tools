class Xct < Formula
  desc "Automation scripts for Xcode projects"
  homepage "https://github.com/albtugel/xcode-cli-tools"
  url "https://github.com/albtugel/xcode-cli-tools/archive/refs/tags/v1.0.3.tar.gz"
  sha256 "abb33095f1214e52e7598adf7f346a91a547ad98fedae1d8a1fd737469943c85"
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