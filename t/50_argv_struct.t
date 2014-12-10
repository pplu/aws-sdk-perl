#!/usr/bin/env perl

use Test::More;

my @tests = (
 { argv => [ qw/{ X=Y }/ ],
   struct => { X => 'Y' },
 },
# { argv => [ qw/{ X=Y Y={ X=Y } }/ ],
#   struct => { X => 'Y', Y => { X => 'Y' } }
# }, 
 { argv => [ qw/[ ]/ ],
   struct => [ ],
 }, 
 { argv => [ qw/[ A B ] /],
   struct => [ 'A', 'B' ],
 }, 
 { argv => [ '{', 'X= Y ', '}' ],
   struct => { X => ' Y ' },
 },
 { argv => [ '{', 'X=Y=Y', '}' ],
   struct => { X => 'Y=Y' },
 },
);

package ArgvStruct {
  use Moose;

  has argv => (
    is => 'ro', 
    isa => 'ArrayRef', 
    default => sub { [ @ARGV ] }, 
    traits => [ 'Array' ],
    handles => {
      argcount => 'count',
      arg => 'get',
    }
  );

  sub parse {
    my ($self) = @_;

    my $context;
    my $index = 0;
    my @stack;
    my $actual_struct;
    
    while ($index < $self->argcount) {
      my $token = $self->arg($index);
      if ($token eq '[') {
        $actual_struct = [];
        push @stack, { struct => $actual_struct, context => $context };
        $context = 'list';
      } elsif($token eq '{') {
        $actual_struct = {};
        push @stack, { struct => $actual_struct, context => $context };
        $context = 'hash';
      } elsif ($token eq ']') {
        my $new_context = pop @stack;
        $context = $new_context->{ context };
        $actual_struct = $new_context->{ struct };
      } elsif ($token eq '}') {
        my $new_context = pop @stack;
        $context = $new_context->{ context };
        $actual_struct = $new_context->{ struct };
      } elsif ($context eq 'list') {
        push @$actual_struct, $token;
      } elsif ($context eq 'hash') {
        my ($k, $v) = split /=/, $token, 2;
 
        if ($v ne '{' and $v ne '[') {
          die "Repeated $k in hash" if (exists $actual_struct->{ $k });
          $actual_struct->{ $k } = $v;
        }
      }
      $index++;
      use Data::Dumper;
      print Dumper($token, $index, \@stack, $actual_struct);
    }

    return $actual_struct;
  }
}

foreach $test (@tests) {
  is_deeply(
    ArgvStruct->new(argv => $test->{ argv })->parse,
    $test->{ struct },
    "Conformance of " . join ' ', @{ $test->{ argv } }
  );
}

done_testing;
