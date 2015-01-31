package Paws::SDB::ReplaceableItem {
  use Moose;
  has Attributes => (is => 'ro', isa => 'ArrayRef[Paws::SDB::ReplaceableAttribute]', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'ItemName', required => 1);
}
1;
