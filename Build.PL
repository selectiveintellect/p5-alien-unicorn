use strict;
use warnings;
use Alien::Base::ModuleBuild;

my $build = Alien::Base::ModuleBuild->new(
    module_name => 'Alien::UnicornEngine',
    license => 'mit',
    dist_author => 'Vikas N. Kumar <vikas@cpan.org>',
    dist_abstract => 'Alien module for Unicorn Engine from www.unicorn-engine.org',
    configure_requires => {
        'Module::Build' => 0,
        'Alien::Base::ModuleBuild' => '0.029',
    },
    build_requires => {
        'Alien::Base::ModuleBuild' => '0.029',
        'Test::Alien' => 0,
        'Module::Build' => 0,
        'Test::More' => 0,
    },
    requires => {
        'Alien::Base' => '0.029',
    },
    alien_name => 'unicorn',
    alien_repository => {
        protocol => 'http',
        host => 'github.com',
        location => '/unicorn-engine/unicorn/archive/',
        exact_filename => 'master.tar.gz',
        exact_version => '1.0',
    },
    alien_msys => 1,
    alien_bin_requires => {
        'Alien::gmake' => 0.11,
    },
    alien_provides_cflags => '-fPIC',
    alien_build_commands => [
        '%{gmake} clean all',
    ],
    alien_install_commands => [
        '%{gmake} install PREFIX=%s',
    ],
    alien_version_check => '%{pkg_config} --atleast-version 0.9 %n && %{pkg_config} --modversion %n',
    meta_merge => {
        resources => {
            repository => 'https://github.com/selectiveintellect/p5-alien-unicorn',
            bugtracker => 'https://github.com/selectiveintellect/p5-alien-unicorn/issues',
        },
    },
);

$build->create_build_script;
$build->dispatch('distmeta');
$build->dispatch('manifest');
$build->dispatch('build');

__END__
#### COPYRIGHT: Selective Intellect LLC.
#### AUTHOR: Vikas N Kumar
#### DATE: 13 September 2016
