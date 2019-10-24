# Generated from json/callresult_class.tt

package Paws::StorageGateway::CreateCachediSCSIVolumeOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::StorageGateway::Types qw//;
  has TargetARN => (is => 'ro', isa => Str);
  has VolumeARN => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TargetARN' => {
                                'type' => 'Str'
                              },
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

Paws::StorageGateway::CreateCachediSCSIVolumeOutput

=head1 ATTRIBUTES


=head2 TargetARN => Str

The Amazon Resource Name (ARN) of the volume target, which includes the
iSCSI name that initiators can use to connect to the target.


=head2 VolumeARN => Str

The Amazon Resource Name (ARN) of the configured volume.


=head2 _request_id => Str


=cut

1;