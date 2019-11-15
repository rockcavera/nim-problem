import strutils
import streams
import times
import algorithm

let
  fileName1 = "lowu64.txt"
  fileName2 = "highu64.txt"

proc processFile(fileName: string) =
  let iTime = epochTime()

  var
    fh = newFileStream(fileName, fmRead)

  if isNil(fh):
    raise newException(IOError, "Problem to open file")

  var
    read: string
    matriz = newSeqOfCap[uint64](400000)
    matriz2 = newSeqOfCap[uint64](400000)

  while readLine(fh, read):
    add(matriz, uint64(parseUInt(read)))

  close(fh)

  sort(matriz)

  for i in matriz:
    if i != matriz2[^1]: add(matriz2, i)

  let eTime = epochTime()
  
  echo fileName, "\nduration: ", eTime - iTime, "\noriginal length: ", len(matriz), "\nfinal length without repeated: ", len(matriz2)

processFile(fileName1)
echo "\n"
processFile(fileName2)