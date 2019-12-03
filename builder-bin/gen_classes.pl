#!/usr/bin/env perl

use strict;
use warnings;

use Getopt::Long;
use Data::Printer;
use Data::Dumper;
use Cwd;
use JSON::MaybeXS;
use File::Slurper 'read_binary';
use Module::Runtime qw/require_module/;

use lib 'builder-lib', 't/lib';

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
foreach my $file_info (@{ $p->boto_file_information }) {
  print "Processing $file_info->{ file }\n" if ($gen_docu_links or $gen_classes);
  eval {
    my $builder = get_builder($file_info->{ file }, $file_info->{ service });
    $builder->write_documentation_file if ($gen_docu_links);
    $builder->process_api if ($gen_classes);
  };
  if ($@) { warn $@; push @failures, "$file_info->{ file } $@\n" }
}

print "Summary of fails:\n" if @failures;
print @failures;

sub get_builder {
  my ($file, $service_dir) = @_;

  my $struct = decode_json(read_binary($file));
  my $type = $struct->{metadata}->{protocol} or die "Type of API call not found";

  # Map classes to be generated with special builders
  my $overrides = {
    'ec2'        => 'EC2',
    'kinesis'    => 'Kinesis',
  };
  $type = $overrides->{ $service_dir } if (defined $overrides->{ $service_dir });
  $type =~ s/\-//;

  my $class_maker = "Paws::API::Builder::${type}";
  require_module $class_maker;

  my $c = $class_maker->new(api_file => $file, template_path => [
                                getcwd() . "/templates/${type}",
                                getcwd() . '/templates/default',
                            ]);
  return $c;
}

