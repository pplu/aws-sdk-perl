package Aws::SQS::MessageAttributeMap {
  use Moose;
  with 'AWS::API::StrToObjMapParser';
  has Map => (is => 'ro', isa => 'HashRef[Aws::SQS::MessageAttributeValue]');
}
1
