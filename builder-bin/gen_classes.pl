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
use Parallel::ForkManager;

use lib 'builder-lib', 't/lib';

use Paws::API::Builder::Paws;
use Paws::API::Builder::Retry;
use Paws::API::ServiceToClass;

my $gen_paws_pm    = 0;
my $gen_classes    = 0;
my $gen_docu_links = 0;
my $gen_class_mapping = 0;

GetOptions ("paws_pm"    => \$gen_paws_pm,
            "classes"    => \$gen_classes,
            "docu_links" => \$gen_docu_links,
            "class_mapping" => \$gen_class_mapping,
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

my $pm = Parallel::ForkManager->new($ENV{MAX_PROCESSES} || 16);

my @failures;
$pm->run_on_finish(
  sub {
    my ($pid, $exit_code, $ident, $exit_signal, $core_dump, $data) = @_;

    my $fail;
    if ($exit_code) {
      $fail = "$ident: process failed";
    } elsif (defined $data) {
      $fail = "$ident: " . $data->[0];
    }
    push @failures, $fail if ($fail);
  }
);

if ($gen_class_mapping) {
  foreach my $file (@files) {
    eval {
      my ($f, $ns, undef) = get_ns_and_builder($file);
      print "$f maps to $ns\n";
    };
    if ($@) {
      push @failures, "$file: $@";
    }
  }
}

if ($gen_paws_pm) {
  $pm->start_child(
    "Paws.pm",
    sub {
      print "Processing Paws.pm\n";
      eval {
        my $p = Paws::API::Builder::Paws->new(
          template_path => [ getcwd() . "/templates" ]
        );
        $p->process;
      };
      my $ret = $@ ? ["$@"] : undef;
      return $ret;
    }
  );
  $pm->start_child(
    "Paws/API/Retry.pm",
    sub {
      print "Processing Paws/API/Retry.pm\n";
      eval {
        my $p = Paws::API::Builder::Retry->new(
          template_path => [ getcwd() . "/templates" ],
          retry_definitions_file => "botocore/botocore/data/_retry.json",
        );
        $p->process;
      };
      my $ret = $@ ? ["$@"] : undef;
      return $ret;
    }
  );
}

if ($gen_docu_links || $gen_classes) {
  foreach my $file (@files) {
    $pm->start_child(
      $file,
      sub {
        print "Processing $file\n";
        eval {
          my (undef, undef, $builder) = get_ns_and_builder($file);
          if ($builder) {
            $builder->write_documentation_file if ($gen_docu_links);
            $builder->process_api if ($gen_classes);
          }
        };
        my $ret = $@ ? ["$@"] : undef;
        return $ret;
      }
    );
  }
}

$pm->wait_all_children;

if (@failures) {
  print "Summary of fails:\n" if @failures;
  for my $l (@failures) {
    print $l;
    print "\n" unless ($l =~ /\n$/);
  }
  exit(1) if ($gen_classes);
}

sub get_ns_and_builder {
  my ($file) = @_;

  if (my ($f, $version) = ($file =~ m/data\/(.*?)\/(.*?)\/service-2.json/)) {
    return if ($f eq '_retry' or $f eq '_regions');
    my $ns = Paws::API::ServiceToClass::service_to_class($f);
    my $builder = get_builder("Paws::$ns", $file);
    return ($ns, $f, $builder);
  }
  return;
}

sub get_builder {
  my ($api, $file) = @_;

  my $struct = decode_json(read_binary($file));
  my $type = $struct->{metadata}->{protocol} or die "Type of API call not found";

  # Map classes to be generated with special builders
  my $overrides = {
    'Paws::EC2'        => 'EC2',
    'Paws::Kinesis'    => 'Kinesis',
  };
  $type = $overrides->{ $api } if (defined $overrides->{ $api });
  $type =~ s/\-//;

  my $class_maker = "Paws::API::Builder::${type}";
  require_module $class_maker;

  my $c = $class_maker->new(api_file => $file, api => $api, template_path => [
                                getcwd() . "/templates/${type}",
                                getcwd() . '/templates/default',
                            ]);
  return $c;
}
