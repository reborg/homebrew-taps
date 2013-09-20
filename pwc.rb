require 'formula'

class Pwc < Formula

  homepage 'https://github.com/reborg/pwc'
  url 'https://github.com/reborg/pwc/archive/0.2.1.tar.gz'
  sha1 '2ee0b22b70146a8486edb1b7fe69746f71143b69'

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
