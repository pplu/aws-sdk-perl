package Aws::SNS::MessageAttributeMap {
  use Moose;
  with 'AWS::API::StrToObjMapParser';
  has Map => (is => 'ro', isa => 'HashRef[Aws::SNS::MessageAttributeValue]');
}
1
