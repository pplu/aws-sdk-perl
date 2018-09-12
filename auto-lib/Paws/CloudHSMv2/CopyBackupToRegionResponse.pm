
package Paws::CloudHSMv2::CopyBackupToRegionResponse;
  use Moose;
  has DestinationBackup => (is => 'ro', isa => 'Paws::CloudHSMv2::DestinationBackup');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudHSMv2::CopyBackupToRegionResponse

=head1 ATTRIBUTES


=head2 DestinationBackup => L<Paws::CloudHSMv2::DestinationBackup>

Information on the backup that will be copied to the destination
region, including CreateTimestamp, SourceBackup, SourceCluster, and
Source Region. CreateTimestamp of the destination backup will be the
same as that of the source backup.

You will need to use the C<sourceBackupID> returned in this operation
to use the DescribeBackups operation on the backup that will be copied
to the destination region.


=head2 _request_id => Str


=cut

1;