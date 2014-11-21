package Aws::SDB::ReplaceableItem {
  use Moose;
  has Attributes => (is => 'ro', isa => 'ArrayRef[Aws::SDB::ReplaceableAttribute]', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
}
1;
