# Generated from json/callresult_class.tt

package Paws::StorageGateway::DeleteSnapshotScheduleOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::StorageGateway::Types qw//;
  has VolumeARN => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'VolumeARN' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::DeleteSnapshotScheduleOutput

=head1 ATTRIBUTES


=head2 VolumeARN => Str

The volume which snapshot schedule was deleted.


=head2 _request_id => Str


=cut

1;