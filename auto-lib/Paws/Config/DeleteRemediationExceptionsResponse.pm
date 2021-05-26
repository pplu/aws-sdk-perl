
package Paws::Config::DeleteRemediationExceptionsResponse;
  use Moose;
  has FailedBatches => (is => 'ro', isa => 'ArrayRef[Paws::Config::FailedDeleteRemediationExceptionsBatch]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Config::DeleteRemediationExceptionsResponse

=head1 ATTRIBUTES


=head2 FailedBatches => ArrayRef[L<Paws::Config::FailedDeleteRemediationExceptionsBatch>]

Returns a list of failed delete remediation exceptions batch objects.
Each object in the batch consists of a list of failed items and failure
messages.


=head2 _request_id => Str


=cut

1;