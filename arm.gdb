set sysroot /usr/arm-linux-gnueabi/
target remote :1234
b main
c

define reg
  set $i = 0
  while $i <= 12
    eval "i r r%d", $i
    set $i = $i + 1
  end
  i r sp
  i r lr
  i r pc
  i r cpsr
end
