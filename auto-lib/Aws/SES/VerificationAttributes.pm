package Aws::SES::VerificationAttributes {
  use Moose;
  with 'AWS::API::StrToObjMapParser';
  has Map => (is => 'ro', isa => 'HashRef[Aws::SES::IdentityVerificationAttributes]');
}
1
