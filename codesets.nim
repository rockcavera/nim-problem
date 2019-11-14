import strutils
import streams
import bitops
import times
import math
import sets

let
  fileName1 = "lowbits.txt"
  fileName2 = "highbits.txt"

proc processFile(fileName: string) =
  let iTime = epochTime()

  var
    fh = newFileStream(fileName, fmRead)

  if isNil(fh):
    raise newException(IOError, "Problem to open file")

  var
    read: string
    smatriz64 = initHashSet[uint64](nextPowerOfTwo(400000))

  while readLine(fh, read):
    var a = 0'u64

    for i in split(read):
      setBit(a, parseInt(i) - 1)

    incl(smatriz64, a)

  close(fh)

  let eTime = epochTime()
  
  echo fileName, "\nduration: ", eTime - iTime, "\noriginal length: ", 400000, "\nfinal length without repeated: ", len(smatriz64)

processFile(fileName1)
echo "\n"
processFile(fileName2)