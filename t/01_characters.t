use strict;
use warnings;
use Test::More;
use Acme::JoJo;

my @PART = 1..8;
my $jojo = Acme::JoJo->new( lang => 'ja' );

subtest 'Total Character Counts' => sub {
    my $all_part_count = scalar( $jojo->characters );
    my $total_part_count = 0;
    for my $num ( @PART ) {
        $total_part_count += scalar( $jojo->characters( part => $num ) );
    }
    is( $total_part_count, $all_part_count, 'characters() and characters( part => $num )' );
    note "Total Character Counts => $all_part_count";
};

done_testing();
