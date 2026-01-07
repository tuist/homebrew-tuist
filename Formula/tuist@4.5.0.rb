class TuistAT450 < Formula
    desc "Create, maintain, and interact with Xcode projects at scale"
    homepage "https://tuist.io"
    url "https://github.com/tuist/tuist/releases/download/4.5.0/tuist.zip"
    sha256 "991630e8c406c9630fe7fcfc571c5402ccee03d389c3a53ab9544db049d9a2b1"
    license "MIT"
    head "https://github.com/tuist/tuist.git", branch: "main"
  
    depends_on macos: :monterey

  preserve_rpath
  
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
  