class DockerAi < Formula
  desc "An AI-powered CLI for Docker"
  homepage "https://github.com/Aj7Ay/docker-ai"
  url "https://github.com/Aj7Ay/docker-ai/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "da67633215f9999b986b244d2d4157d07931f7956a81e050302b11562af9e27c"
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