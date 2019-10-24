# Generated from json/callresult_class.tt

package Paws::StorageGateway::UpdateSnapshotScheduleOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::StorageGateway::Types qw//;
  has VolumeARN => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'VolumeARN' => {
                                'type' => 'Str'
                              }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::UpdateSnapshotScheduleOutput

=head1 ATTRIBUTES


=head2 VolumeARN => Str

The Amazon Resource Name (ARN) of the volume. Use the ListVolumes
operation to return a list of gateway volumes.


=head2 _request_id => Str


=cut

1;