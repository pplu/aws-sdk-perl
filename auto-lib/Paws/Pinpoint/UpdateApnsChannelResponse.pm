
package Paws::Pinpoint::UpdateApnsChannelResponse;
  use Moose;
  has APNSChannelResponse => (is => 'ro', isa => 'Paws::Pinpoint::APNSChannelResponse', required => 1);
  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'APNSChannelResponse');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::UpdateApnsChannelResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> APNSChannelResponse => L<Paws::Pinpoint::APNSChannelResponse>




=head2 _request_id => Str


=cut

