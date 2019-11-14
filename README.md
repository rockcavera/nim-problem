# nim-problem
problem with speed to exclude equals using hashset

```
# nim c -d:danger -d:release codeseq.nim
lowbits.txt -> 0.2678647041320801
original length: 400000
final length without repeated: 398721



highbits.txt -> 0.2608492374420166
original length: 400000
final length without repeated: 398631


# nim c -d:danger -d:release codesets.nim
lowbits.txt -> 0.4657342433929443
original length: 400000
final length without repeated: 398721



highbits.txt -> 98.11659216880798
original length: 400000
final length without repeated: 398631
```
