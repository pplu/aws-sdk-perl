
package Paws::EC2::CopySnapshotResult;
  use Moose;
  has SnapshotId => (is => 'ro', isa => 'Str', request_name => 'snapshotId', traits => ['NameInRequest',]);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Tag]', request_name => 'tagSet', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CopySnapshotResult

=head1 ATTRIBUTES


=head2 SnapshotId => Str

The ID of the new snapshot.


=head2 Tags => ArrayRef[L<Paws::EC2::Tag>]

Any tags applied to the new snapshot.


=head2 _request_id => Str


=cut

