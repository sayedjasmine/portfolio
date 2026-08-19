#!/usr/bin/env bash
# Generates WebVTT captions for the two videos on this site that carry speech.
# Verified with ffprobe: uxfest-full.mp4 (98s) and nox-demo.mp4 (85s) have audio tracks
# with strong 3-8Hz envelope modulation, i.e. narration. Every other video is silent
# or plays muted, so none of the others need captions.
#
# Run once, from this assets/ folder:
#     bash make-captions.sh
#
# Requires Python 3 and ffmpeg (brew install ffmpeg).
set -euo pipefail
command -v ffmpeg >/dev/null || { echo "Install ffmpeg first:  brew install ffmpeg"; exit 1; }
python3 -m pip install --quiet --upgrade openai-whisper
for v in uxfest-full nox-demo; do
  [ -f "$v.mp4" ] || { echo "skip $v.mp4 (not found)"; continue; }
  echo "Transcribing $v.mp4 ..."
  python3 -m whisper "$v.mp4" --model small --language en --output_format vtt --output_dir .
done
echo
echo "Done. You now have uxfest-full.vtt and nox-demo.vtt in assets/."
echo "Open each one and correct any names or jargon Whisper misheard, then in play.html"
echo "add this line inside the <video id=\"fullVideo\"> tag, right after the <source> line:"
echo '    <track kind="captions" src="assets/uxfest-full.vtt" srclang="en" label="English" default />'
