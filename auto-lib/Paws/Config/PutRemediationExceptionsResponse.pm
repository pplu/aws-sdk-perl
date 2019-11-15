
package Paws::Config::PutRemediationExceptionsResponse;
  use Moose;
  has FailedBatches => (is => 'ro', isa => 'ArrayRef[Paws::Config::FailedRemediationExceptionBatch]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Config::PutRemediationExceptionsResponse

=head1 ATTRIBUTES


=head2 FailedBatches => ArrayRef[L<Paws::Config::FailedRemediationExceptionBatch>]

Returns a list of failed remediation exceptions batch objects. Each
object in the batch consists of a list of failed items and failure
messages.


=head2 _request_id => Str


=cut

1;