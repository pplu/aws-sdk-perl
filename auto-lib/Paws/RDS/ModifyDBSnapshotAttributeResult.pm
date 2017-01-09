
package Paws::RDS::ModifyDBSnapshotAttributeResult;
  use Moose;
  has DBSnapshotAttributesResult => (is => 'ro', isa => 'Paws::RDS::DBSnapshotAttributesResult');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::ModifyDBSnapshotAttributeResult

=head1 ATTRIBUTES


=head2 DBSnapshotAttributesResult => L<Paws::RDS::DBSnapshotAttributesResult>




=head2 _request_id => Str


=cut

