package Aws::SES::DkimAttributes {
  use Moose;
  with 'AWS::API::StrToObjMapParser';
  has Map => (is => 'ro', isa => 'HashRef[Aws::SES::IdentityDkimAttributes]');
}
1
