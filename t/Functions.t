use strict;
use warnings;

use lib 't/lib';

BEGIN { $ENV{LIST_SOMEUTILS_IMPLEMENTATION} = 'XS' }

use LSU::Test::Functions;
LSU::Test::Functions->run_tests;

