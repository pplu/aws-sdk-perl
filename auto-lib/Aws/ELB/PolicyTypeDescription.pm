package Aws::ELB::PolicyTypeDescription {
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has PolicyAttributeTypeDescriptions => (is => 'ro', isa => 'ArrayRef[Aws::ELB::PolicyAttributeTypeDescription]');
  has PolicyTypeName => (is => 'ro', isa => 'Str');
}
1;
