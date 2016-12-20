
package Paws::SSM::GetDeployablePatchSnapshotForInstanceResult;
  use Moose;
  has InstanceId => (is => 'ro', isa => 'Str');
  has SnapshotDownloadUrl => (is => 'ro', isa => 'Str');
  has SnapshotId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSM::GetDeployablePatchSnapshotForInstanceResult

=head1 ATTRIBUTES


=head2 InstanceId => Str

The ID of the instance.


=head2 SnapshotDownloadUrl => Str

A pre-signed Amazon S3 URL that can be used to download the patch
snapshot.


=head2 SnapshotId => Str

The user-defined snapshot ID.


=head2 _request_id => Str


=cut

1;