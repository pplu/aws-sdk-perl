
package Paws::SES::SendBounceResponse;
  use Moose;
  has MessageId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SES::SendBounceResponse

=head1 ATTRIBUTES


=head2 MessageId => Str

The message ID of the bounce message.


=head2 _request_id => Str


=cut

