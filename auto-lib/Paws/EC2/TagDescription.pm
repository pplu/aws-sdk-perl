package Paws::EC2::TagDescription {
  use Moose;
  has Key => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'key');
  has ResourceId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'resourceId');
  has ResourceType => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'resourceType');
  has Value => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'value');
}
1;
