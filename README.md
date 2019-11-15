# nim-problem
problem with speed to exclude equals using hashset

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
```
