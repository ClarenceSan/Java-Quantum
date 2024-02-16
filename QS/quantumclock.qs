// This is a simple Clock.
//
VectorSize 8

SigmaX 2
Hadamard 2
Hadamard 1
Hadamard 0
QFT 0, 8

SetViewMode 2

Delay 10

for i = 0; i < 3600000000; i += 0.28
  SetViewAngle Math.PI * i / 180
endfor
//One rotation - One Minute
//
