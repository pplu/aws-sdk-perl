
package Paws::DocDB::ModifyDBSubnetGroupResult;
  use Moose;
  has DBSubnetGroup => (is => 'ro', isa => 'Paws::DocDB::DBSubnetGroup');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DocDB::ModifyDBSubnetGroupResult

=head1 ATTRIBUTES


=head2 DBSubnetGroup => L<Paws::DocDB::DBSubnetGroup>




=head2 _request_id => Str


=cut

