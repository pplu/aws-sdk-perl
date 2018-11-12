
package Paws::Pinpoint::GetChannelsResponse;
  use Moose;
  has ChannelsResponse => (is => 'ro', isa => 'Paws::Pinpoint::ChannelsResponse', required => 1);
  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'ChannelsResponse');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::GetChannelsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChannelsResponse => L<Paws::Pinpoint::ChannelsResponse>




=head2 _request_id => Str


=cut

