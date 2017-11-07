
package Paws::Pinpoint::UpdateApnsVoipSandboxChannelResponse;
  use Moose;
  has APNSVoipSandboxChannelResponse => (is => 'ro', isa => 'Paws::Pinpoint::APNSVoipSandboxChannelResponse', required => 1);
  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'APNSVoipSandboxChannelResponse');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::UpdateApnsVoipSandboxChannelResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> APNSVoipSandboxChannelResponse => L<Paws::Pinpoint::APNSVoipSandboxChannelResponse>




=head2 _request_id => Str


=cut

