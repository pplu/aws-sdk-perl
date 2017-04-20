
package Paws::Pinpoint::UpdateEndpointResponse;
  use Moose;
  has MessageBody => (is => 'ro', isa => 'Paws::Pinpoint::MessageBody', required => 1);
  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'MessageBody');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::UpdateEndpointResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> MessageBody => L<Paws::Pinpoint::MessageBody>




=head2 _request_id => Str


=cut

