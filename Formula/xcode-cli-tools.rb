class XcodeCliTools < Formula
  desc "Lightweight Zsh scripts to automate Xcode project navigation and CLI builds"
  homepage "https://github.com/albtugel/xcode-cli-tools"
  url "https://github.com/albtugel/xcode-cli-tools/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "11e289e63c5970c0c80b27b4010a3737b60098f92985160b7381440798e4d35e"
  license "MIT"

  def install
    # Устанавливаем все .zsh файлы в директорию share
    pkgshare.install Dir["*.zsh"]
  end

  def caveats
    <<~EOS
      Чтобы твои команды (xproj, xrun и др.) заработали, добавь эти строки в ~/.zshrc:

      source #{opt_pkgshare}/OpenXcodeProj.zsh
      source #{opt_pkgshare}/RunXcodeProj.zsh
      source #{opt_pkgshare}/TestXcodeProj.zsh
      source #{opt_pkgshare}/CleanXcodeProj.zsh
      source #{opt_pkgshare}/DropXcodeProj.zsh

      После сохранения файла не забудь прописать: source ~/.zshrc
    EOS
  end

  test do
    # Простая проверка, что файлы существуют после установки
    assert_predicate opt_pkgshare/"OpenXcodeProj.zsh", :exist?
  end
end