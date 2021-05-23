
package Paws::IVS::CreateStreamKeyResponse;
  use Moose;
  has StreamKey => (is => 'ro', isa => 'Paws::IVS::StreamKey', traits => ['NameInRequest'], request_name => 'streamKey');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IVS::CreateStreamKeyResponse

=head1 ATTRIBUTES


=head2 StreamKey => L<Paws::IVS::StreamKey>

Stream key used to authenticate an RTMPS stream for ingestion.


=head2 _request_id => Str


=cut

