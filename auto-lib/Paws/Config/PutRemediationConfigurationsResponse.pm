
package Paws::Config::PutRemediationConfigurationsResponse;
  use Moose;
  has FailedBatches => (is => 'ro', isa => 'ArrayRef[Paws::Config::FailedRemediationBatch]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Config::PutRemediationConfigurationsResponse

=head1 ATTRIBUTES


=head2 FailedBatches => ArrayRef[L<Paws::Config::FailedRemediationBatch>]

Returns a list of failed remediation batch objects.


=head2 _request_id => Str


=cut

1;