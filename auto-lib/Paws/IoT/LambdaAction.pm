package Paws::IoT::LambdaAction;
  use Moose;
  has functionArn => (is => 'ro', isa => 'Str', required => 1);
1;
