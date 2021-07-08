#!/usr/bin/env perl

use strict;
use warnings;

use Getopt::Long;
use Data::Printer;
use Data::Dumper;
use Cwd;

use Parallel::ForkManager;

use lib 'builder-lib';

use Paws::API::Builder::Paws;
use Paws::API::Builder::Retry;

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
  foreach my $file_info (values %{ $p->boto_file_information }) {
    $pm->start_child(
      $file_info->{ file },
      sub {
        print "Processing $file_info->{ file }\n";
        eval {
	  my $builder = $p->get_builder_for($file_info->{ service });
          $builder->write_documentation_file if ($gen_docu_links);
          $builder->process_api if ($gen_classes);
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
