require 'formula'

class Pwc < Formula

  homepage 'https://github.com/reborg/pwc'
  url 'https://github.com/reborg/pwc/archive/0.2.2.tar.gz'
  sha1 '02034932fb8248fb3008b4a7cf3e43f72274d7f3'

  head "https://github.com/reborg/pwc.git"

  def install
    inreplace "bin/pwc", "#!/bin/sh", "#!/bin/sh\nPWC_HOME=#{libexec}"
    libexec.install Dir['*']
    bin.write_exec_script libexec/'bin/pwc'
  end

  test do
    system "#{bin}/pwc"
  end

end
