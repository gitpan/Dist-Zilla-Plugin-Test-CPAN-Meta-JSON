package Dist::Zilla::Plugin::Test::CPAN::Meta::JSON;
use strict;
use warnings;
# ABSTRACT: release tests for your META.json
our $VERSION = '0.001'; # VERSION

use Moose;
use Moose;
extends 'Dist::Zilla::Plugin::InlineFiles';


__PACKAGE__->meta->make_immutable;
no Moose;

1;




=pod

=encoding utf-8

=head1 NAME

Dist::Zilla::Plugin::Test::CPAN::Meta::JSON - release tests for your META.json

=head1 VERSION

version 0.001

=head1 SYNOPSIS

In C<dist.ini>:

    [Test::CPAN::Meta::JSON]

=head1 DESCRIPTION

This is an extension of L<Dist::Zilla::Plugin::InlineFiles>, providing the
following file:

    xt/release/meta-json.t - a standard Test::CPAN::Meta::JSON test

See L<Test::CPAN::Meta::JSON> for what this test does.

=for test_synopsis 1;
__END__

=head1 AVAILABILITY

The latest version of this module is available from the Comprehensive Perl
Archive Network (CPAN). Visit L<http://www.perl.com/CPAN/> to find a CPAN
site near you, or see L<http://search.cpan.org/dist/Dist-Zilla-Plugin-Test-CPAN-Meta-JSON/>.

The development version lives at L<http://github.com/doherty/Dist-Zilla-Plugin-Test-CPAN-Meta-JSON>
and may be cloned from L<git://github.com/doherty/Dist-Zilla-Plugin-Test-CPAN-Meta-JSON.git>.
Instead of sending patches, please fork this project using the standard
git and github infrastructure.

=head1 SOURCE

The development version is on github at L<http://github.com/doherty/Dist-Zilla-Plugin-Test-CPAN-Meta-JSON>
and may be cloned from L<git://github.com/doherty/Dist-Zilla-Plugin-Test-CPAN-Meta-JSON.git>

=head1 BUGS AND LIMITATIONS

No bugs have been reported.

Please report any bugs or feature requests through the web interface at
L<http://github.com/doherty/Dist-Zilla-Plugin-Test-CPAN-Meta-JSON/issues>.

=head1 AUTHOR

Mike Doherty <doherty@cpan.org>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2011 by Mike Doherty.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut


__DATA__
__[ xt/release/meta-json.t ]__
#!perl

use Test::More;
eval 'use Test::CPAN::Meta::JSON';
plan skip_all => 'Test::CPAN::Meta::JSON required for testing META.json' if $@;
meta_json_ok();
