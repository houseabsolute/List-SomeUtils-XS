package List::SomeUtils::XS;

use 5.006;
use strict;
use warnings;

our $VERSION = '0.413';

use XSLoader ();
XSLoader::load('List::SomeUtils::XS', $VERSION);

#     eval $ldr unless $ENV{LIST_MOREUTILS_PP};

#     # ensure to catch even PP only subs
#     my @pp_imp = map { "List::SomeUtils->can(\"$_\") or *$_ = \\&List::SomeUtils::PP::$_;" }
#       qw(any all none notall one any_u all_u none_u notall_u one_u true false
#       firstidx firstval firstres lastidx lastval lastres onlyidx onlyval onlyres
#       insert_after insert_after_string
#       apply after after_incl before before_incl
#       each_array each_arrayref pairwise
#       natatime mesh uniq singleton minmax part indexes bsearch bsearchidx
#       sort_by nsort_by _XScompiled);
#     my $pp_stuff = join( "\n", "use List::SomeUtils::PP;", "package List::SomeUtils;", @pp_imp );
#     eval $pp_stuff;
#     die $@ if $@;
# }

1;

# ABSTRACT: XS implementation for List::SomeUtils

__END__

=pod

=head1 DESCRIPTION

There are no user-facing parts here. See L<List::SomeUtils> for API details.

=head1 SEE ALSO

L<List::Util>, L<List::AllUtils>

=head1 HISTORICAL COPYRIGHT

Some parts copyright 2011 Aaron Crane.

Copyright 2004 - 2010 by Tassilo von Parseval

Copyright 2013 - 2015 by Jens Rehsack

=cut
