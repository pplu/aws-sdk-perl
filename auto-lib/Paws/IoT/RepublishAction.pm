package Paws::IoT::RepublishAction;
  use Moose;
  has roleArn => (is => 'ro', isa => 'Str', required => 1);
  has topic => (is => 'ro', isa => 'Str', required => 1);
1;
