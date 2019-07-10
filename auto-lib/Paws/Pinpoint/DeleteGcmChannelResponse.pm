
package Paws::Pinpoint::DeleteGcmChannelResponse;
  use Moose;
  has GCMChannelResponse => (is => 'ro', isa => 'Paws::Pinpoint::GCMChannelResponse', required => 1);
  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'GCMChannelResponse');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::DeleteGcmChannelResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> GCMChannelResponse => L<Paws::Pinpoint::GCMChannelResponse>




=head2 _request_id => Str


=cut

