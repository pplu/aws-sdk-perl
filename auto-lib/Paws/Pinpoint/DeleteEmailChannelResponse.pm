
package Paws::Pinpoint::DeleteEmailChannelResponse;
  use Moose;
  has EmailChannelResponse => (is => 'ro', isa => 'Paws::Pinpoint::EmailChannelResponse', required => 1);
  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'EmailChannelResponse');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::DeleteEmailChannelResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> EmailChannelResponse => L<Paws::Pinpoint::EmailChannelResponse>




=head2 _request_id => Str


=cut

