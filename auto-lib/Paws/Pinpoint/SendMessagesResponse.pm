
package Paws::Pinpoint::SendMessagesResponse;
  use Moose;
  has MessageResponse => (is => 'ro', isa => 'Paws::Pinpoint::MessageResponse', required => 1);
  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'MessageResponse');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::SendMessagesResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> MessageResponse => L<Paws::Pinpoint::MessageResponse>




=head2 _request_id => Str


=cut

