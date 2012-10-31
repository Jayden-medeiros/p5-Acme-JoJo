use strict;
use warnings;
use Test::More;
use Acme::JoJo::Character::Part6::WeatherReport;
use Acme::JoJo::Stand::Part6::WeatherReport;
use Acme::JoJo::Stand::Part6::HeavyWeather;

subtest 'Role Memory Disc (WeatherReport)' => sub {
    my $weather = Acme::JoJo::Character::Part6::WeatherReport->new();
    {
        my $stand = $weather->stand;
        is( ref $stand, 'Acme::JoJo::Stand::Part6::WeatherReport', 'default' );
    }
    {
        $weather->insert_memory_disc;
        my $stand = $weather->stand;
        is( ref $stand, 'Acme::JoJo::Stand::Part6::HeavyWeather', 'insert_memory_disc()' );
    }
    {
        $weather->insert_memory_disc;
        my $stand = $weather->stand;
        is( ref $stand, 'Acme::JoJo::Stand::Part6::HeavyWeather', 'already have memory disc' );
    }
    {
        $weather->eject_memory_disc;
        my $stand = $weather->stand;
        is( ref $stand, 'Acme::JoJo::Stand::Part6::WeatherReport', 'eject_memory_disc()' );
    }
    {
        $weather->eject_memory_disc;
        my $stand = $weather->stand;
        is( ref $stand, 'Acme::JoJo::Stand::Part6::WeatherReport', "don't have memory disc" );
    }
};

subtest 'Role Memory Disc (WeatherReport)' => sub {
    my $stand = Acme::JoJo::Stand::Part6::WeatherReport->new();
    my $weather = $stand->character;
    my $stand_from_weather = $weather->stand;
    is( ref $stand_from_weather, 'Acme::JoJo::Stand::Part6::WeatherReport', 'weather from weather has weather' );
};

subtest 'Role Memory Disc (HeavyWeather)' => sub {
    my $stand = Acme::JoJo::Stand::Part6::HeavyWeather->new();
    my $weather = $stand->character;
    my $stand_from_weather = $weather->stand;
    is( ref $stand_from_weather, 'Acme::JoJo::Stand::Part6::HeavyWeather', 'weather from heavy_weather has heavy_weather' );
};


done_testing();
