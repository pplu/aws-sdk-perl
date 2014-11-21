package Aws::SDB::DeletableItem {
  use Moose;
  has Attributes => (is => 'ro', isa => 'ArrayRef[Aws::SDB::Attribute]');
  has Name => (is => 'ro', isa => 'Str', required => 1);
}
1;
