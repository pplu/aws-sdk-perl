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

# If no files specified, get the last version of each json for each service
if (not @files) {
  my @dirs = glob('botocore/botocore/data/*') or
    die "Cannot find botocore data files - try: make pull-other-sdks\n";

  foreach my $class_dir (@dirs) {
    my @class_defs = grep { -f $_ } glob("$class_dir/*/service-2.json");
    next if (not @class_defs);
    @class_defs = sort @class_defs;
    my $class_version = pop @class_defs;
    push @files, $class_version;
  }
}

if ($gen_paws_pm) {
  my $p = Paws::API::Builder::Paws->new(
    template_path => [ getcwd() . "/templates" ]
  );
  $p->process;
}

exit 0 if (not $gen_docu_links and not $gen_classes);

my @failures;
foreach my $file (@files) {
  print "Processing $file\n" if ($gen_docu_links or $gen_classes);
  if (my ($service_dir, $version) = ($file =~ m/data\/(.*?)\/(.*?)\/service-2.json/)){
    next if ($service_dir eq '_retry' or $service_dir eq '_regions');
    eval {
      my $builder = get_builder($file, $service_dir);
      $builder->write_documentation_file if ($gen_docu_links);
      $builder->process_api if ($gen_classes);
    };
    if ($@) { warn $@; push @failures, "$file $@\n" }
  }
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

