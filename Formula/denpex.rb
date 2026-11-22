class Denpex < Formula
  include Language::Python::Virtualenv

  desc "Find the likely cause of GPU training failures and run fleet health checks"
  homepage "https://denpex.com"
  url "https://files.pythonhosted.org/packages/1f/0f/efd6b607c896dc3b9cd11d13318149abc0c159688174b5d70a719ec1df13/denpex-1.1.37.tar.gz"
  sha256 "2520b3d6b570fe0e11ff089a769e2991b90e3ff290c15c7f7b8d4053e11e9216"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "nccl-tests", shell_output("#{bin}/denpex --help")
  end
end
