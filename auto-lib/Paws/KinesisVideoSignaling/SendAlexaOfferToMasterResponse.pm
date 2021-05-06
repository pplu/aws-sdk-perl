
package Paws::KinesisVideoSignaling::SendAlexaOfferToMasterResponse;
  use Moose;
  has Answer => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisVideoSignaling::SendAlexaOfferToMasterResponse

=head1 ATTRIBUTES


=head2 Answer => Str

The base64-encoded SDP answer content.


=head2 _request_id => Str


=cut

