
package Paws::Neptune::ModifyDBClusterSnapshotAttributeResult;
  use Moose;
  has DBClusterSnapshotAttributesResult => (is => 'ro', isa => 'Paws::Neptune::DBClusterSnapshotAttributesResult');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Neptune::ModifyDBClusterSnapshotAttributeResult

=head1 ATTRIBUTES


=head2 DBClusterSnapshotAttributesResult => L<Paws::Neptune::DBClusterSnapshotAttributesResult>




=head2 _request_id => Str


=cut

