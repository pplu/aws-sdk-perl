package Aws::IAM::User {
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', required => 1);
  has CreateDate => (is => 'ro', isa => 'Str', required => 1);
  has Path => (is => 'ro', isa => 'Str');
  has UserId => (is => 'ro', isa => 'Str', required => 1);
  has UserName => (is => 'ro', isa => 'Str');
}
1
