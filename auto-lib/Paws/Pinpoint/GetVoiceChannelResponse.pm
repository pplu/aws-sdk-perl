
package Paws::Pinpoint::GetVoiceChannelResponse;
  use Moose;
  has VoiceChannelResponse => (is => 'ro', isa => 'Paws::Pinpoint::VoiceChannelResponse', required => 1);
  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'VoiceChannelResponse');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::GetVoiceChannelResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> VoiceChannelResponse => L<Paws::Pinpoint::VoiceChannelResponse>




=head2 _request_id => Str


=cut

