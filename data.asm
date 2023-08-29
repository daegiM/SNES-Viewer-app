.include "hdr.asm"

.section ".rodata1" superfree

patterns:
.incbin "picturefile01.pic"
patterns_end:

.ends

.section ".rodata2" superfree
map:
.incbin "picturefile01.map"
map_end:

palette:
.incbin "picturefile01.pal"

.ends 


.section ".rodata3" superfree

snesfont:
.incbin "pvsneslibfont.pic"

.ends


