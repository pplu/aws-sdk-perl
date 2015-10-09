package Paws::IoT::SnsAction;
  use Moose;
  has roleArn => (is => 'ro', isa => 'Str', required => 1);
  has targetArn => (is => 'ro', isa => 'Str', required => 1);
1;
