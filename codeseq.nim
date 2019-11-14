import strutils
import streams
import bitops
import times
import algorithm

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
    smatriz64 = newSeqOfCap[uint64](400000)
    ssmatriz64 = newSeqOfCap[uint64](400000)

  while readLine(fh, read):
    var a = 0'u64

    for i in split(read):
      setBit(a, parseInt(i) - 1)

    add(smatriz64, a)

  close(fh)

  sort(smatriz64)

  for i in smatriz64:
    if i != ssmatriz64[^1]: add(ssmatriz64, i)

  let eTime = epochTime()
  
  echo fileName, "\nduration: ", eTime - iTime, "\noriginal length: ", len(smatriz64), "\nfinal length without repeated: ", len(ssmatriz64)

processFile(fileName1)
echo "\n"
processFile(fileName2)