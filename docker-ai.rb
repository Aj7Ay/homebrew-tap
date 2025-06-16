class DockerAi < Formula
  desc "An AI-powered CLI for Docker"
  homepage "https://github.com/Aj7Ay/docker-ai"
  url "https://github.com/Aj7Ay/docker-ai/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "d5f8afb9d5bbca54b2d8f37b51c2704b7eb1032fcb09cb009c2e260e4c91fdef"
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