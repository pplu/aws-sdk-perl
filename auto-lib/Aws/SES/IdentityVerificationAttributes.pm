package Aws::SES::IdentityVerificationAttributes {
  use Moose;
  with ('AWS::API::ResultParser');
  has VerificationStatus => (is => 'ro', isa => 'Str', required => 1);
  has VerificationToken => (is => 'ro', isa => 'Str');
}
1
