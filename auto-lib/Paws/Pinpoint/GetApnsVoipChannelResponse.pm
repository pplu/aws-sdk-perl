
package Paws::Pinpoint::GetApnsVoipChannelResponse;
  use Moose;
  has APNSVoipChannelResponse => (is => 'ro', isa => 'Paws::Pinpoint::APNSVoipChannelResponse', required => 1);
  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'APNSVoipChannelResponse');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::GetApnsVoipChannelResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> APNSVoipChannelResponse => L<Paws::Pinpoint::APNSVoipChannelResponse>




=head2 _request_id => Str


=cut

