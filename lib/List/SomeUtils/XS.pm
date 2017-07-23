package List::SomeUtils::XS;

use 5.006;
use strict;
use warnings;

our $VERSION = '0.55';

require XSLoader;
XSLoader::load( __PACKAGE__, $VERSION );

require List::SomeUtils::PP;

# This list is copied from List::SomeUtils itself and should be updated
# when subs are added.
my @subs = qw(
    after
    after_incl
    all
    all_u
    any
    any_u
    apply
    before
    before_incl
    bsearch
    bsearchidx
    each_array
    each_arrayref
    false
    firstidx
    firstres
    firstval
    indexes
    insert_after
    insert_after_string
    lastidx
    lastres
    lastval
    mesh
    minmax
    mode
    natatime
    none
    none_u
    notall
    notall_u
    nsort_by
    one
    one_u
    onlyidx
    onlyres
    onlyval
    pairwise
    part
    singleton
    sort_by
    true
    uniq
);

for my $sub (@subs) {
    next if __PACKAGE__->can($sub);
    ## no critic (TestingAndDebugging::ProhibitNoStrict)
    no strict 'refs';
    *{$sub} = List::SomeUtils::PP->can($sub);
}

1;

# ABSTRACT: XS implementation for List::SomeUtils

__END__

=pod

=head1 DESCRIPTION

There are no user-facing parts here. See L<List::SomeUtils> for API details.

You shouldn't have to install this module directly. When you install
L<List::SomeUtils>, it checks whether your system has a compiler. If it does,
then it adds a dependency on this module so that it gets installed and you
have the faster XS implementation.

This distribution requires L<List::SomeUtils> but to avoid a circular
dependency, that dependency is explicitly left out from the this
distribution's metadata. However, without LSU already installed this module
cannot function.

=head1 SEE ALSO

L<List::Util>, L<List::AllUtils>

=head1 HISTORICAL COPYRIGHT

Some parts copyright 2011 Aaron Crane.

Copyright 2004 - 2010 by Tassilo von Parseval

Copyright 2013 - 2015 by Jens Rehsack

=cut
