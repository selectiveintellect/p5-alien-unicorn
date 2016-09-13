package Alien::UnicornEngine;
use parent 'Alien::Base';

our $VERSION = '0.02';

1;

__END__
#### COPYRIGHT: Selective Intellect LLC.
#### AUTHOR: Vikas N Kumar
#### DATE: 13 September 2016

=head1 NAME

Alien::UnicornEngine - Perl extension to install Unicorn-Engine from L<www.unicorn-engine.org>

=head1 SYNOPSIS

Alien::UnicornEngine is a perl module that enables the installation of the open
source disassembly library Unicorn-Engine from
L<http://www.unicorn-engine.org> on the system or locate the existing
installation if any. It is currently setup to use the Github master branch.

You can use it in the C<Build.PL> file if you're using Module::Build or
C<Makefile.PL> file if you're using ExtUtils::MakeMaker.

            my $unicorn= Alien::UnicornEngine->new;
            my $build = Module::Build->new(
                ...
                extra_compiler_flags => $unicorn->cflags(),
                extra_linker_flags => $unicorn->libs(),
                ...
            );


=head1 VERSION

0.02

=head1 METHODS

=over

=item B<new>

Creates the object. Refer C<Alien::Base> for more information.

=item B<cflags>

This method provides the compiler flags needed to use the library on the system.

=item B<libs>

This method provides the linker flags needed to use the library on the system.

=back

=head1 SEE ALSO

=over

=item C<Alien::Base>

=back

=head1 AUTHORS

Vikas N Kumar <vikas@cpan.org>

=head1 REPOSITORY

L<https://github.com/selectiveintellect/p5-alien-unicorn.git>

=head1 COPYRIGHT

Copyright (C) 2016. Selective Intellect LLC <github@selectiveintellect.com>. All Rights Reserved.

=head1 LICENSE

This is free software under the MIT license.
