# Generated from json/callresult_class.tt

package Paws::StorageGateway::DescribeCachediSCSIVolumesOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::StorageGateway::Types qw/StorageGateway_CachediSCSIVolume/;
  has CachediSCSIVolumes => (is => 'ro', isa => ArrayRef[StorageGateway_CachediSCSIVolume]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'CachediSCSIVolumes' => {
                                         'class' => 'Paws::StorageGateway::CachediSCSIVolume',
                                         'type' => 'ArrayRef[StorageGateway_CachediSCSIVolume]'
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

Paws::StorageGateway::DescribeCachediSCSIVolumesOutput

=head1 ATTRIBUTES


=head2 CachediSCSIVolumes => ArrayRef[StorageGateway_CachediSCSIVolume]

An array of objects where each object contains metadata about one
cached volume.


=head2 _request_id => Str


=cut

1;