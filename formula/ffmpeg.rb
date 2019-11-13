class Ffmpeg < Formula
  desc "Play, record, convert, and stream audio and video"
  homepage "https://ffmpeg.org/"
  url "https://ffmpeg.org/releases/ffmpeg-4.2.1.tar.xz"
  sha256 "cec7c87e9b60d174509e263ac4011b522385fd0775292e1670ecc1180c9bb6d4"
  revision 2
  head "https://github.com/FFmpeg/FFmpeg.git"

  depends_on "nasm" => :build
  depends_on "pkg-config" => :build

  depends_on "lame"
  depends_on "libvorbis"
  depends_on "libvpx"
  depends_on "snappy"
  depends_on "theora"
  depends_on "x264"
  depends_on "x265"
  depends_on "xvid"
  depends_on "xz"

  def install
    args = %W[
      --prefix=#{prefix}
      --cc=#{ENV.cc}
      --host-cflags=#{ENV.cflags}
      --host-ldflags=#{ENV.ldflags}
      --extra-cflags="-fno-stack-check"
      --enable-gpl
      --enable-version3
      --enable-libmp3lame
      --enable-libsnappy
      --enable-libtheora
      --enable-libvorbis
      --enable-libvpx
      --enable-libx264
      --enable-libx265
      --enable-libxvid
      --disable-libjack
      --disable-indev=jack
    ]

    system "./configure", *args
    system "make", "install"
  end

  test do
    # Create an example mp4 file
    mp4out = testpath/"video.mp4"
    system bin/"ffmpeg", "-filter_complex", "testsrc=rate=1:duration=1", mp4out
    assert_predicate mp4out, :exist?
  end
end
