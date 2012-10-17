use strict;
use warnings;
use Test::More;
use Acme::JoJo;

my @PART = 1..8;
my $jojo = Acme::JoJo->new( lang => 'ja' );

subtest 'Total Stand Counts' => sub {
    my $all_part_count = scalar( $jojo->stands );
    my $total_part_count = 0;
    for my $num ( @PART ) {
        $total_part_count += scalar( $jojo->stands( part => $num ) );
    }
    is( $total_part_count, $all_part_count, 'stands() and stands( part => $num )' );
    note "Total Stand Counts => $all_part_count";
};

done_testing();
