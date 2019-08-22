cd C:/Users/cl/Desktop/bo18/cmt4/agm
if { [ catch { xload xmp agm.xmp } result ] } {
  exit 10
}
xset intstyle default
save proj
exit 0
