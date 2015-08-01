package Paws::DynamoDB::AttributeMap {
  use Moose;
  with 'Paws::API::StrToObjMapParser';

  use MooseX::ClassAttribute;
  class_has xml_keys =>(is => 'ro', default => 'name');
  class_has xml_values =>(is => 'ro', default => 'value');

  has Map => (is => 'ro', isa => 'HashRef[Paws::DynamoDB::AttributeValue]');
}
1
