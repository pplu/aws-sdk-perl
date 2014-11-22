package Paws::SDB::DeletableItem {
  use Moose;
  has Attributes => (is => 'ro', isa => 'ArrayRef[Paws::SDB::Attribute]');
  has Name => (is => 'ro', isa => 'Str', required => 1);
}
1;
