class DockerAi < Formula
  desc "An AI-powered CLI for Docker"
  homepage "https://github.com/Aj7Ay/docker-ai"
  url "https://github.com/Aj7Ay/docker-ai/archive/refs/tags/v0.3.3.tar.gz"
  sha256 "76dedeb0e426c840acb46ce6a11b54f22619937b015116ab719b9eb2368dd4d2"
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