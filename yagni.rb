require 'formula'

class Yagni < Formula

  homepage 'https://github.com/reborg/yagni-detector'
  url 'https://github.com/reborg/yagni-detector/archive/0.0.1.tar.gz'
  sha1 '90aec65adbff1d06e8434dd1a7f9cb2a07568d12'

  head "https://github.com/reborg/yagni-detector.git"

  def install
    inreplace "bin/yagni", "#!/bin/sh", "#!/bin/sh\nYAGNI_HOME=#{libexec}"
    libexec.install Dir['*']
    bin.write_exec_script libexec/'bin/yagni'
  end

  test do
    system "#{bin}/yagni"
  end

end
