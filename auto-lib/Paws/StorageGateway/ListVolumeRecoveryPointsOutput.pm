# Generated from json/callresult_class.tt

package Paws::StorageGateway::ListVolumeRecoveryPointsOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::StorageGateway::Types qw/StorageGateway_VolumeRecoveryPointInfo/;
  has GatewayARN => (is => 'ro', isa => Str);
  has VolumeRecoveryPointInfos => (is => 'ro', isa => ArrayRef[StorageGateway_VolumeRecoveryPointInfo]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'GatewayARN' => {
                                 'type' => 'Str'
                               },
               'VolumeRecoveryPointInfos' => {
                                               'type' => 'ArrayRef[StorageGateway_VolumeRecoveryPointInfo]',
                                               'class' => 'Paws::StorageGateway::VolumeRecoveryPointInfo'
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

Paws::StorageGateway::ListVolumeRecoveryPointsOutput

=head1 ATTRIBUTES


=head2 GatewayARN => Str




=head2 VolumeRecoveryPointInfos => ArrayRef[StorageGateway_VolumeRecoveryPointInfo]

An array of VolumeRecoveryPointInfo objects.


=head2 _request_id => Str


=cut

1;