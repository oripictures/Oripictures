Add-Type -AssemblyName System.Drawing
$im=[System.Drawing.Bitmap]::FromFile((Join-Path $PSScriptRoot 'full.png'))
function Crop($name,$x,$y,$w,$h){$r=[System.Drawing.Rectangle]::new($x,$y,$w,$h);$b=$im.Clone($r,$im.PixelFormat);$b.Save((Join-Path $PSScriptRoot "dist/assets/$name.jpg"),[System.Drawing.Imaging.ImageFormat]::Jpeg);$b.Dispose()}
Crop hero 270 76 530 405
Crop women 0 680 400 220
Crop men 401 680 399 220
Crop p0 24 920 244 244
Crop p1 278 920 244 244
Crop p2 532 920 244 244
Crop p3 24 1236 244 244
Crop p4 278 1236 244 244
Crop p5 532 1236 244 244
Crop promo0 0 1673 400 400
Crop promo1 401 1673 399 400
$im.Dispose()
