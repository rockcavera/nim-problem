#!/usr/bin/perl
use Time::HiRes qw(gettimeofday);

my ($file1, $file2, $file3, $file4) = ("lowu64.txt", "highu64.txt", "lowu32.txt", "highu32.txt");

sub processFile {
  my $file = shift;
  my $iTime = gettimeofday();

  my %matriz;

  open my $input, '<', $file;
  
  while (<$input>) {
    chomp($_);
    $matriz{$_} = 1;
  }
  
  close $input;
  
  my $eTime = gettimeofday();
  
  print $file, "\nduration: ", $eTime - $iTime, "\noriginal length: ", 400000, "\nfinal length without repeated: ", scalar(keys %matriz), "\n";
}

processFile($file1);
print "\n\n";
processFile($file2);
print "\n\n";
processFile($file3);
print "\n\n";
processFile($file4);