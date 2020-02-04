# nim-problem
Problem with speed to exclude equals using sets (HashSet) and tables (Tables). The higher the bit on (most significant bit), the higher the number, even using the same type, the longer the package runtime.

The numbers in the .txt files were randomly generated. In the high files only the most significant half of the bits were used. In low files only the least significant half of the bits were used.

I created an implementation with seqs and sort to exclude repeated entries just to compare the runtime.

Related issues: [11764](https://github.com/nim-lang/Nim/issues/11764 "11764")

* Use seqs and sort: codeseqX.nim
* Use sets: codesetsX.nim
* Use tables: codetablesX.nim

# uint64
```
# nim c -d:danger -d:release codesequ64
lowu64.txt
duration: 0.09696197509765625
original length: 400000
final length without repeated: 398658


highu64.txt
duration: 0.1199495792388916
original length: 400000
final length without repeated: 398691



# nim c -d:danger -d:release codesetsu64
lowu64.txt
duration: 0.3608067035675049
original length: 400000
final length without repeated: 398658


highu64.txt
duration: 88.57006502151489
original length: 400000
final length without repeated: 398691



# nim c -d:danger -d:release codetablesu64
lowu64.txt
duration: 0.3748018741607666
original length: 400000
final length without repeated: 398658


highu64.txt
duration: 134.5316565036774
original length: 400000
final length without repeated: 398691
```

# uint32
```
# nim c -d:danger -d:release codesequ32
lowu32.txt
duration: 0.08496189117431641
original length: 400000
final length without repeated: 53772


highu32.txt
duration: 0.09392809867858887
original length: 400000
final length without repeated: 53770



# nim c -d:danger -d:release codesetsu32
lowu32.txt
duration: 0.0619814395904541
original length: 400000
final length without repeated: 53772


highu32.txt
duration: 0.8734824657440186
original length: 400000
final length without repeated: 53770



# nim c -d:danger -d:release codetablesu32
lowu32.txt
duration: 0.06098222732543945
original length: 400000
final length without repeated: 53772


highu32.txt
duration: 0.7725355625152588
original length: 400000
final length without repeated: 53770
```

# Perl implementation
```
# perl hash.pl
lowu64.txt
duration: 1.21330690383911
original length: 400000
final length without repeated: 398658


highu64.txt
duration: 1.12243294715881
original length: 400000
final length without repeated: 398691


lowu32.txt
duration: 1.04555296897888
original length: 400000
final length without repeated: 53772


highu32.txt
duration: 1.07326102256775
original length: 400000
final length without repeated: 53770
```

# C# implementation
```
# codehashset
lowu64.txt
duration: 0,151852100
original length: 400000
final length without repeated: 398658

highu64.txt
duration: 0,201863100
original length: 400000
final length without repeated: 398691

lowu32.txt
duration: 0,066980700
original length: 400000
final length without repeated: 53772

highu32.txt
duration: 0,094961900
original length: 400000
final length without repeated: 53770
```

# mIRC Scripting implementation
```
# /testhashtable lowu64.txt
lowu64.txt
duration: 10.203
original length: 400000
final length without repeated: 398658

# /testhashtable highu64.txt
highu64.txt
duration: 10.156
original length: 400000
final length without repeated: 398691

# /testhashtable lowu32.txt
lowu32.txt
duration: 9.25
original length: 400000
final length without repeated: 53772

# /testhashtable highu32.txt
highu32.txt
duration: 9.5
original length: 400000
final length without repeated: 53770
```
