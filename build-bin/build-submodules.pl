#!/usr/bin/env perl

use Template;

my $template = Template->new;
my @dirs = glob('auto-lib/Paws/*.pm');

foreach my $dir (@dirs) {
  my ($module_name) = ($dir =~ m/.*\/(.*?)\.pm/);
  print "$module_name\n";

  $template->process('dist.ini-submodules', {
      api_name => $module_name,
      submodule_version => '0.01',
      paws_prereq => '0',
    },
    'dist.ini'
  );

  print `dzil build`;
}
