package Paws::IoT::Certificate;
  use Moose;
  has certificateArn => (is => 'ro', isa => 'Str');
  has certificateId => (is => 'ro', isa => 'Str');
  has creationDate => (is => 'ro', isa => 'Str');
  has status => (is => 'ro', isa => 'Str');
1;
