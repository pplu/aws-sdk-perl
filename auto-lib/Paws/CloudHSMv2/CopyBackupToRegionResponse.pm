# Generated from json/callresult_class.tt

package Paws::CloudHSMv2::CopyBackupToRegionResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CloudHSMv2::Types qw/CloudHSMv2_DestinationBackup/;
  has DestinationBackup => (is => 'ro', isa => CloudHSMv2_DestinationBackup);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'DestinationBackup' => {
                                        'class' => 'Paws::CloudHSMv2::DestinationBackup',
                                        'type' => 'CloudHSMv2_DestinationBackup'
                                      }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CloudHSMv2::CopyBackupToRegionResponse

=head1 ATTRIBUTES


=head2 DestinationBackup => CloudHSMv2_DestinationBackup

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