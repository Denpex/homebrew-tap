class Denpex < Formula
  include Language::Python::Virtualenv

  desc "Find the likely cause of GPU training failures and run fleet health checks"
  homepage "https://denpex.com"
  url "https://files.pythonhosted.org/packages/f9/99/c56d8c51c9eca61a800431e11fb5731762041eb6c513112793040e40ef44/denpex-1.1.38.tar.gz"
  sha256 "bc98ec758591ff1b88618707a8ae8ba8adf8efb14542eb7251d7a64d9bf033e5"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "nccl-tests", shell_output("#{bin}/denpex --help")
  end
end
