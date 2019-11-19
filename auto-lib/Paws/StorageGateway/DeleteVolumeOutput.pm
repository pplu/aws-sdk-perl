# Generated from json/callresult_class.tt

package Paws::StorageGateway::DeleteVolumeOutput;
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

Paws::StorageGateway::DeleteVolumeOutput

=head1 ATTRIBUTES


=head2 VolumeARN => Str

The Amazon Resource Name (ARN) of the storage volume that was deleted.
It is the same ARN you provided in the request.


=head2 _request_id => Str


=cut

1;