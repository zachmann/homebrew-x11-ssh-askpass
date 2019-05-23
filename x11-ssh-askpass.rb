# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class X11SshAskpass < Formula
  desc "X11 ssh-askpass for MAC OS"
  homepage "https://github.com/zachmann/x11-ssh-askpass"
  url "https://github.com/zachmann/x11-ssh-askpass/archive/master.zip"
  version "0.0.1"
  sha256 "4a602c3957d1de24846022c272145a148e88b1f96feabab4ccfd5e144a22208b"

  depends_on :x11

  def install
    system "mkdir #{prefix}/bin"
    system "gcc -I/usr/X11/include x11-ssh-askpass.c drawing.c dynlist.c resources.c -o #{prefix}/bin/x11-ssh-askpass -L/usr/X11/lib -lX11 -lXt"
    system "ln -s #{prefix}/bin/x11-ssh-askpass #{prefix}/bin/ssh-askpass"
  end

  test do
    system "true"
  end
end
