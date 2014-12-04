package Paws::IAM::PolicyDetail {
  use Moose;
  has PolicyDocument => (is => 'ro', isa => 'Str');
  has PolicyName => (is => 'ro', isa => 'Str');
}
1;
