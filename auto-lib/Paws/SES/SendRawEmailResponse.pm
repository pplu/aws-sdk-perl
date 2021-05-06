
package Paws::SES::SendRawEmailResponse;
  use Moose;
  has MessageId => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SES::SendRawEmailResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> MessageId => Str

The unique message identifier returned from the C<SendRawEmail> action.


=head2 _request_id => Str


=cut

