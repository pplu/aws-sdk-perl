package Paws::IoT::Policy;
  use Moose;
  has policyArn => (is => 'ro', isa => 'Str');
  has policyName => (is => 'ro', isa => 'Str');
1;
