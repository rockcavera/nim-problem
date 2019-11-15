import strutils
import streams
import times
import math
import tables

let
  fileName1 = "lowu64.txt"
  fileName2 = "highu64.txt"

proc processFile(fileName: string) =
  let iTime = epochTime()

  var
    fh = newFileStream(fileName, fmRead, 1000000)

  if isNil(fh):
    raise newException(IOError, "Problem to open file")

  var
    read: string
    matriz = initTable[uint64, uint8](nextPowerOfTwo(400000))

  while readLine(fh, read):
    matriz[uint64(parseUInt(read))] = 1'u8

  close(fh)

  let eTime = epochTime()
  
  echo fileName, "\nduration: ", eTime - iTime, "\noriginal length: ", 400000, "\nfinal length without repeated: ", len(matriz)

processFile(fileName1)
echo "\n"
processFile(fileName2)