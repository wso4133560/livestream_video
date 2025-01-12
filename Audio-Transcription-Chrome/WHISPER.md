## whisperlive SAVE subtitle in fastwhisper mode.
when installed whisperlive, find code in whisper/lib/python3.10/site-packages/whisper_live/server.py.
class ServeClientFasterWhisper(ServeClientBase):
    -> def update_segments(self, segments, duration):
        -> self.transcript.append(self.format_segment(start, end, text_, completed=True))



insert code before self.transcript.append(self.format_segment(start, end, text_, completed=True))
```python
with open('whisper.txt', 'a', encoding='utf-8')  as out_txt:
    out_txt.write(text_ + '\n')
```

## git diff
diff --git a/whisper_live/server.py b/whisper_live/server.py
index d8528e2..d8c81fc 100644
--- a/whisper_live/server.py
+++ b/whisper_live/server.py
@@ -1079,6 +1079,8 @@ class ServeClientFasterWhisper(ServeClientBase):
                 if s.no_speech_prob > self.no_speech_thresh:
                     continue

+                with open('whisper.txt', 'a', encoding='utf-8')  as out_txt:
+                    out_txt.write(text_ + '\n')
                 self.transcript.append(self.format_segment(start, end, text_, completed=True))
                 offset = min(duration, s.end)
