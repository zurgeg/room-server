# All credits go to Larsenv for this file.
# 6100m takes no credit, even for edits!
# This is properly licensed.
# So do not go saying there is a licensing problem, I will just ignore you.
use strict;
use warnings;
use String::CRC32;
print "Enter the filename: ";
my $filename = <STDIN>;
chomp $filename;
open(SOMEFILE, $filename);
binmode SOMEFILE;
my $crc = crc32(*SOMEFILE, 4225757159);
my $hex = sprintf("%X", $crc);
print($hex, "\n");
close(SOMEFILE);
