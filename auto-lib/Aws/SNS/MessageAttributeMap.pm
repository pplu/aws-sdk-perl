package Aws::SNS::MessageAttributeMap {
  use Moose;
  with 'AWS::API::StrToObjMapParser';

  use MooseX::ClassAttribute;
  class_has xml_keys =>(is => 'ro', default => 'Name');
  class_has xml_values =>(is => 'ro', default => 'Value');

  has Map => (is => 'ro', isa => 'HashRef[Aws::SNS::MessageAttributeValue]');
}
1
