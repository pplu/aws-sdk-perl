#!/usr/bin/env perl

use strict;
use warnings;

use Getopt::Long;
use Data::Printer;
use Data::Dumper;
use Cwd;
use lib 'builder-lib';

use Paws::API::Builder::Paws;

my $gen_paws_pm    = 0;
my $gen_classes    = 0;
my $gen_docu_links = 0;

GetOptions ("paws_pm"    => \$gen_paws_pm,
            "classes"    => \$gen_classes,
            "docu_links" => \$gen_docu_links,
           )
or die "Error in command line arguments\n";

my (@files) = @ARGV;

my $p = Paws::API::Builder::Paws->new(
  template_path => [ getcwd() . "/templates" ],
  (@files > 0) ? (boto_service_files => \@files) : (),
);

$p->process if ($gen_paws_pm);

exit 0 if (not $gen_docu_links and not $gen_classes);

my @failures;
foreach my $file_info (values %{ $p->boto_file_information }) {
  print "Processing $file_info->{ file }\n" if ($gen_docu_links or $gen_classes);
  eval {
    my $builder = $p->get_builder_for($file_info->{ service });
    $builder->write_documentation_file if ($gen_docu_links);
    $builder->process_api if ($gen_classes);
  };
  if ($@) { warn $@; push @failures, "$file_info->{ file } $@\n" }
}

print "Summary of fails:\n" if @failures;
print @failures;

