package Paws::SDB::ReplaceableItem {
  use Moose;
  has Attributes => (is => 'ro', isa => 'ArrayRef[Paws::SDB::ReplaceableAttribute]', required => 1);
  has Name => (is => 'ro', isa => 'Str', xmlname => 'ItemName', traits => ['Unwrapped'], required => 1);
}
1;
