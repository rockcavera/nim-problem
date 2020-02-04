alias testhashtable {
  set -l %iTime $ticks

  hmake testhashtable 10000

  .fopen fhIn $$1

  while ($fread(fhIn)) hadd testhashtable $v1 1

  .fclose fhIn

  set -l %fTime $ticks

  echo -a $$1
  echo -a duration: $calc((%fTime - %iTime) / 1000)
  echo -a original length: 400000
  echo -a final length without repeated: $hget(testhashtable,0).item

  .hfree testhashtable
}
