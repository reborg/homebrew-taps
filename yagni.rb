require 'formula'

class Yagni < Formula

  homepage 'https://github.com/reborg/yagni-detector'
  url 'https://github.com/reborg/yagni-detector/archive/0.0.3.tar.gz'
  sha1 ''

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
