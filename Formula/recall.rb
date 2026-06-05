class Recall < Formula
  desc "Your external memory for the terminal. Save, search, and execute commands."
  homepage "https://github.com/cognisivelabs/recall-cli"
  url "https://github.com/cognisivelabs/recall-cli/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "e6de3a37c89a8db39e53c0267410b38e91095e513ffb52216df42820507b0734"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "./cmd/recall"
  end

  test do
    assert_match "Recall", shell_output("#{bin}/recall --help")
  end
end
