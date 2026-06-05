class Recall < Formula
  desc "Your external memory for the terminal. Save, search, and execute commands."
  homepage "https://github.com/cognisivelabs/recall-cli"
  url "https://github.com/cognisivelabs/recall-cli/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "eff35974b62724778dc7f0e28117bfab7ac612b1ef2fb66eac18ff29c3de0de7"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "./cmd/recall"
  end

  test do
    assert_match "Recall", shell_output("#{bin}/recall --help")
  end
end
