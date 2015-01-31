package Paws::SDB::DeletableItem {
  use Moose;
  has Attributes => (is => 'ro', isa => 'ArrayRef[Paws::SDB::Attribute]');
  has Name => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'ItemName', required => 1);
}
1;
