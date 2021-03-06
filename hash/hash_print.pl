use strict;
use warnings;
my %hash = (1 => 'one', 2 => 'two', 3 => 'three');
print %hash;
print "\n";

my $i = 10;

while ($i > 0) {
	$i = $i - 1;
	print %hash , "\n";
};


my %newHash = %hash;

#adding a new key
$hash{4} = 'FOUR';

print "Printing hash after adding new value \n";
print %hash, "\n";


#the newly added keys are not printed now, so the assignment is not of reference, but of value
print "Printing newHash after adding new value \n";
print %newHash, "\n";


#delete 1 from hash
delete $hash{1};

print "Printing hash after deleting 1 \n";
print %hash, "\n";

my @keys_arr = keys(%hash);
print "keys of array is @keys_arr \n";

my @value_arr = values(%hash);
print "values of array is @value_arr \n";

#each for iterating
print("printing values using each function\n");
while(my($key, $value) = each(%hash)) {
	print("$key -> $value ");
}

#exits
print("\nDoes key 4 exist in hash? ", exists($hash{4}));
if(exists($hash{4})) {
	print("\n4 exists in the hash");
}

#map from array
my @required = qw(preserver sunscreen water_bottle jacket);
my %skipper =map{$_,1}
	qw(blue_shirt hat jacket preserver sunscreen);

print("map from array ", %skipper);
