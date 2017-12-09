
package Paws::SES::SendCustomVerificationEmailResponse;
  use Moose;
  has MessageId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SES::SendCustomVerificationEmailResponse

=head1 ATTRIBUTES


=head2 MessageId => Str

The unique message identifier returned from the
C<SendCustomVerificationEmail> operation.


=head2 _request_id => Str


=cut

