# SNES-Viewer-app 

This is bmp file to SNES view change 

Bmp file was changed by gfx2snes file 



I used Mode1 background and added monochrome 2 bmp picture 

To compile above you need wla-65816 and wlalink file 

On CMD type 

> wla-65816 data.asm 

> wla-65816 picturefile01.asm

> wlalink linkerfile01.prj sfcpicture01.sfc

It will create sfcpicture01.sfc file and 

you can run on snes emulator 

At the picture , if you press A button 

the screen will be changed  

I referred pvsneslib snes example 

Mode1 data size is small so I used only monochrome bmp file 




