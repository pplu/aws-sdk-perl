
package Paws::Pinpoint::DeleteAdmChannelResponse;
  use Moose;
  has ADMChannelResponse => (is => 'ro', isa => 'Paws::Pinpoint::ADMChannelResponse', required => 1);
  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'ADMChannelResponse');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::DeleteAdmChannelResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ADMChannelResponse => L<Paws::Pinpoint::ADMChannelResponse>




=head2 _request_id => Str


=cut

