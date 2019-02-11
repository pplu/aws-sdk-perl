
package Paws::DocDB::ModifyDBClusterSnapshotAttributeResult;
  use Moose;
  has DBClusterSnapshotAttributesResult => (is => 'ro', isa => 'Paws::DocDB::DBClusterSnapshotAttributesResult');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DocDB::ModifyDBClusterSnapshotAttributeResult

=head1 ATTRIBUTES


=head2 DBClusterSnapshotAttributesResult => L<Paws::DocDB::DBClusterSnapshotAttributesResult>




=head2 _request_id => Str


=cut

