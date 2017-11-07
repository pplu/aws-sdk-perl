
package Paws::SES::SendBulkTemplatedEmailResponse;
  use Moose;
  has Status => (is => 'ro', isa => 'ArrayRef[Paws::SES::BulkEmailDestinationStatus]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SES::SendBulkTemplatedEmailResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Status => ArrayRef[L<Paws::SES::BulkEmailDestinationStatus>]

The unique message identifier returned from the
C<SendBulkTemplatedEmail> action.


=head2 _request_id => Str


=cut

