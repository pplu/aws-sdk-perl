
package Paws::Pinpoint::GetApnsSandboxChannelResponse;
  use Moose;
  has APNSSandboxChannelResponse => (is => 'ro', isa => 'Paws::Pinpoint::APNSSandboxChannelResponse', required => 1);
  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'APNSSandboxChannelResponse');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::GetApnsSandboxChannelResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> APNSSandboxChannelResponse => L<Paws::Pinpoint::APNSSandboxChannelResponse>




=head2 _request_id => Str


=cut

