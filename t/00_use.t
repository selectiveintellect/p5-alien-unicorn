use Test::More;
use blib;
use Data::Dumper;
use_ok 'Alien::UnicornEngine';
my $unicorn = new_ok('Alien::UnicornEngine');
note $unicorn->cflags;
note $unicorn->libs;
note Alien::UnicornEngine::ConfigData->config('finished_installing');
is(Alien::UnicornEngine::ConfigData->config('finished_installing'), 1, 'Installing complete');

done_testing();

__END__
