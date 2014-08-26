package Aws::IAM::SAMLProviderListEntry {
  use Moose;
  with ('AWS::API::ResultParser');
  has Arn => (is => 'ro', isa => 'Str');
  has CreateDate => (is => 'ro', isa => 'Str');
  has ValidUntil => (is => 'ro', isa => 'Str');
}
1
