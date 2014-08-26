package Aws::ELB::PolicyAttributeDescription {
  use Moose;
  with ('AWS::API::ResultParser');
  has AttributeName => (is => 'ro', isa => 'Str');
  has AttributeValue => (is => 'ro', isa => 'Str');
}
1
