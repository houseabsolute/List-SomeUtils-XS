use strict;
use warnings;

use Test::More 0.96;
use Test::Warnings 0.006;

BEGIN { $ENV{LIST_SOMEUTILS_IMPLEMENTATION} = 'XS' }
use List::SomeUtils;

is(
    Module::Implementation::implementation_for('List::SomeUtils'),
    'XS',
    'List::SomeUtils is using XS implementation'
);

done_testing();
