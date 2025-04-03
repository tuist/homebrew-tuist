class TuistAT450 < Formula
    desc "Create, maintain, and interact with Xcode projects at scale"
    homepage "https://tuist.io"
    url "https://github.com/tuist/tuist/archive/refs/tags/4.46.1.tar.gz"
    sha256 "10a324eb89ec1797bf761ea97d6fcfcce7e20ca35ac65604d42a82933f165738"
    license "MIT"
    head "https://github.com/tuist/tuist.git", branch: "main"
  
    depends_on macos: :monterey
  
    def install
      bin.install "tuist"
      lib.install "ProjectDescription.framework"
      lib.install "ProjectDescription.framework.dSYM"
      share.install "Templates"
    end
  
    test do
      assert_match version.to_s, shell_output("${bin}/tuist version")
    end
  end
  