
package Paws::KinesisVideoSignaling::GetIceServerConfigResponse;
  use Moose;
  has IceServerList => (is => 'ro', isa => 'ArrayRef[Paws::KinesisVideoSignaling::IceServer]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisVideoSignaling::GetIceServerConfigResponse

=head1 ATTRIBUTES


=head2 IceServerList => ArrayRef[L<Paws::KinesisVideoSignaling::IceServer>]

The list of ICE server information objects.


=head2 _request_id => Str


=cut

