class Xct < Formula
  desc "Automation scripts for Xcode projects"
  homepage "https://github.com/albtugel/xcode-cli-tools"
  url "https://github.com/albtugel/xcode-cli-tools/archive/refs/tags/v1.0.2.tar.gz"
  sha256 "a1bda0f0ea514e2dd9b42696d29721922023e11dd24a74af4ec90ace05237b3a"
  license "MIT"

  def install
    # Устанавливаем файлы сразу как готовые команды в bin
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