$ErrorActionPreference='Stop'
$assets=@(
@('hero','1664645833817-7581189209a2',2400),
@('wedding','1664646130493-ee7e4ff85b8e',1600),
@('landscape','1654499002304-33b6db6783d7',2000),
@('portrait','1762606989984-a3c611aa5886',1400),
@('bride','1693074445771-6dd5d1b5668e',1400),
@('embrace','1684253866485-b26f847ff97e',1600),
@('kiss','1719499683843-721331f2495f',1400)
)
foreach($a in $assets){Invoke-WebRequest -Uri "https://images.unsplash.com/photo-$($a[1])?auto=format&fit=crop&w=$($a[2])&q=85" -OutFile "dist/assets/$($a[0]).jpg"}
