set boxwidth 0.4 absolute
set boxdepth 0.3
set style fill solid 1.00 border lt -1
set grid nopolar
set grid xtics nomxtics ytics nomytics ztics nomztics nortics nomrtics nox2tics nomx2tics noy2tics nomy2tics nocbtics nomcbtics
set grid vertical layerdefault lt 0 linecolor 0 linewidth 1.000, lt 0 linecolor 0 linewidth 1.000
unset key
set wall z0 fc rgb "slategrey" fillstyle transparent solid 0.50 border lt -1
set view 59, 24, 1, 1
set style data lines
set xyplane at 0
set xrange [ * : * ] noreverse writeback
set x2range [ * : * ] noreverse writeback
set yrange [ 0.00000 : 6.00000 ] noreverse nowriteback
set y2range [ * : * ] noreverse writeback
set zrange [ * : * ] noreverse writeback
set cbrange [ * : * ] noreverse writeback
set rrange [ * : * ] noreverse writeback
set pm3d depthorder base
set pm3d interpolate 1,1 flush begin noftriangles border lt black linewidth 1.000 dashtype solid corners2color mean
set pm3d lighting primary 0.5 specular 0.2 spec2 0
set colorbox vertical origin screen 0.9, 0.2 size screen 0.05, 0.6 front noinvert bdefault
rgbfudge(x) = x*51*32768 + (11-x)*51*128 + int(abs(5.5-x)*510/9.)
ti(col) = sprintf("%d",col)
NO_ANIMATION = 1
$data << EOD
1 1.5 2 2.4 4 6
2 1.5 3 3.5 4 5.5
3 4.5 5 5.5 6 6.5
4 3.7 4.5 5.0 5.5 6.1
5 3.1 3.5 4.2 5 6.1
6 1 4 5.0 6 9
7 4 4 4.8 6 6.1
8 4 5 5.1 6 6.1
9 1.5 2 2.4 3 3.5
10 2.7 3 3.5 4 4.3
EOD
splot for [col=1:5] $data using 1:(col):(col*column(col)):(rgbfudge($1)) with boxes fc rgb variable
