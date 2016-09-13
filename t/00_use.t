use Test::Alien;
use Test::More tests => 3;

use_ok 'Alien::UnicornEngine';

alien_ok 'Alien::UnicornEngine';

my $unicorn = new_ok 'Alien::UnicornEngine';
note $unicorn->cflags;
note $unicorn->libs;

__END__
