class DockerAi < Formula
  desc "An AI-powered CLI for Docker"
  homepage "https://github.com/Aj7Ay/docker-ai"
  url "https://github.com/Aj7Ay/docker-ai/archive/refs/tags/v0.2.4.tar.gz"
  sha256 "452aa8d076a496550d87deefb6397160452940125852322c145405379e81f596"
  license "Apache-2.0"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", "docker-ai", "./cmd/docker-ai/main.go"
    bin.install "docker-ai"
  end

  test do
    assert_match "version", shell_output("#{bin}/docker-ai version")
  end
end 