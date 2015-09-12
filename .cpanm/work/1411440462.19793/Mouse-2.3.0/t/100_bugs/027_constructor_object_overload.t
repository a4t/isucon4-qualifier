#!/usr/bin/perl
# This is automatically generated by author/import-moose-test.pl.
# DO NOT EDIT THIS FILE. ANY CHANGES WILL BE LOST!!!
use t::lib::MooseCompat;
use strict;
use warnings;
use Test::More;

{
    package Foo;

    use Mouse;

    use overload '""' => sub {''};

    sub bug { 'plenty' }

    __PACKAGE__->meta->make_immutable;
}

ok(Foo->new()->bug(), 'call constructor on object reference with overloading');

done_testing;
