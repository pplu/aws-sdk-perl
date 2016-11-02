
package Paws::StorageGateway::ListVolumeInitiatorsOutput;
  use Moose;
  has Initiators => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  has _request_id => (is => 'ro', isa => 'Str');

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