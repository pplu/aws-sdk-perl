
package Paws::RedShift::CreateSnapshotCopyGrantResult;
  use Moose;
  has SnapshotCopyGrant => (is => 'ro', isa => 'Paws::RedShift::SnapshotCopyGrant');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::CreateSnapshotCopyGrantResult

=head1 ATTRIBUTES


=head2 SnapshotCopyGrant => L<Paws::RedShift::SnapshotCopyGrant>




=head2 _request_id => Str


=cut

