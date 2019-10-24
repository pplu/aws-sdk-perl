# Generated from json/callresult_class.tt

package Paws::StorageGateway::ListVolumeInitiatorsOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::StorageGateway::Types qw//;
  has Initiators => (is => 'ro', isa => ArrayRef[Str|Undef]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Initiators' => {
                                 'type' => 'ArrayRef[Str|Undef]'
                               }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::ListVolumeInitiatorsOutput

=head1 ATTRIBUTES


=head2 Initiators => ArrayRef[Str|Undef]

The host names and port numbers of all iSCSI initiators that are
connected to the gateway.


=head2 _request_id => Str


=cut

1;