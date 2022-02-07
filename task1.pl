use strict;
use warnings;

my @unsorted = ( qw/ 7 1 3 4 2 4 6 5 5 / );
my @search = qw{ 2 73 6 44 3 55 5 7};

sub bubbleSort {
	my $flow=$#_;
	while($flow) {
		for(my $i=0; $i<$flow; $i++) {
			@_[$i, $i+1]=@_[$i+1, $i] if $_[$i]>$_[$i+1];
		}
		$flow--;
	}
	return @_;
}

print "$_" for bubbleSort(@unsorted), "\n";


sub search{
	my ($lst, $x) = @_;
	my @id = (undef, $#{$lst}, 0);
	my $cnt = 0;

	while($id[-1] <= $id[1]){
		$id[0] = int(($id[-1] + $id[1]) / 2);
		++$cnt;

		return("MATCH\n") if($x == $lst->[$id[0]]);

		($x < $lst->[$id[0]])?
			($id[1] = $id[0] - 1):
			($id[-1] = $id[0] + 1);
	}

	return "NOT_MATCH\n";
}

print search(\@unsorted, $_) for @search;