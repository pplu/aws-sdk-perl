# Generated from json/callresult_class.tt

package Paws::StorageGateway::ListVolumesOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::StorageGateway::Types qw/StorageGateway_VolumeInfo/;
  has GatewayARN => (is => 'ro', isa => Str);
  has Marker => (is => 'ro', isa => Str);
  has VolumeInfos => (is => 'ro', isa => ArrayRef[StorageGateway_VolumeInfo]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'VolumeInfos' => {
                                  'class' => 'Paws::StorageGateway::VolumeInfo',
                                  'type' => 'ArrayRef[StorageGateway_VolumeInfo]'
                                },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Marker' => {
                             'type' => 'Str'
                           },
               'GatewayARN' => {
                                 'type' => 'Str'
                               }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::ListVolumesOutput

=head1 ATTRIBUTES


=head2 GatewayARN => Str




=head2 Marker => Str

Use the marker in your next request to continue pagination of iSCSI
volumes. If there are no more volumes to list, this field does not
appear in the response body.


=head2 VolumeInfos => ArrayRef[StorageGateway_VolumeInfo]

An array of VolumeInfo objects, where each object describes an iSCSI
volume. If no volumes are defined for the gateway, then C<VolumeInfos>
is an empty array "[]".


=head2 _request_id => Str


=cut

1;