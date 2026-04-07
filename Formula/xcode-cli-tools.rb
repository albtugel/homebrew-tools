class XcodeCliTools < Formula
  desc "Lightweight Zsh scripts to automate Xcode project navigation and CLI builds"
  homepage "https://github.com/albtugel/xcode-cli-tools"
  url "https://github.com/albtugel/xcode-cli-tools/archive/refs/tags/v1.0.0.tar.gz"
  
  sha256 "28f48946fdc84c4f42e2591d258f81461cb391508c85e7e5941c1bbfe7e3c751"
  license "MIT"

  def install
   
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
    assert_predicate opt_pkgshare/"OpenXcodeProj.zsh", :exist?
  end
end