class Xct < Formula
  desc "Automation scripts for Xcode projects"
  homepage "https://github.com/albtugel/xcode-cli-tools"
  url "https://github.com/albtugel/xcode-cli-tools/archive/refs/tags/v1.0.1.tar.gz"
  # Оставляем тот хеш, который у тебя сработал последним (начинается на 28f489...)
  sha256 "f0291055ac13c35036059d5291bafa566fb823349942b1715ee63cd48a838949"
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