package Aws::DynamoDB::AttributeValue {
  use Moose;
  has B => (is => 'ro', isa => 'Str');
  has BS => (is => 'ro', isa => 'ArrayRef[Str]');
  has N => (is => 'ro', isa => 'Str');
  has NS => (is => 'ro', isa => 'ArrayRef[Str]');
  has S => (is => 'ro', isa => 'Str');
  has SS => (is => 'ro', isa => 'ArrayRef[Str]');
}
1
