package List::SomeUtils::XS;

use 5.006;
use strict;
use warnings;

our $VERSION = '0.413';

use XSLoader ();
XSLoader::load( 'List::SomeUtils::XS', $VERSION );

use List::SomeUtils::PP;

BEGIN {
    # This list is copied from List::SomeUtils itself and should be updated
    # when subs are added.
    my @subs = qw(
        any all none notall
        true false
        firstidx lastidx
        insert_after insert_after_string
        apply indexes
        after after_incl before before_incl
        firstval lastval
        each_array each_arrayref
        pairwise natatime
        mesh uniq
        minmax part
        bsearch
        sort_by nsort_by
        one any_u all_u none_u notall_u one_u
        firstres onlyidx onlyval onlyres lastres
        singleton bsearchidx
    );

    for my $sub (@subs) {
        next if __PACKAGE__->can($sub);
        no strict 'refs';
        *{$sub} = List::SomeUtils::PP->can($sub);
    }
}

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
