require 'formula'

class Pwc < Formula

  homepage 'https://github.com/reborg/pwc'
  url 'https://github.com/reborg/pwc/archive/0.1.0.tar.gz'
  sha1 '5be3bfc953202a849d251d07aa94edd599d037be'

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
