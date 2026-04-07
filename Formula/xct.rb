class Xct < Formula
  desc "Automation scripts for Xcode projects"
  homepage "https://github.com/albtugel/xcode-cli-tools"
  url "https://github.com/albtugel/xcode-cli-tools/archive/refs/tags/v1.0.0.tar.gz"
  # Оставляем тот хеш, который у тебя сработал последним (начинается на 28f489...)
  sha256 "28f48946fdc84c4f42e2591d258f81461cb391508c85e7e5941c1bbfe7e3c751"
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