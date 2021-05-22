
package Paws::AppRunner::ListAutoScalingConfigurationsResponse;
  use Moose;
  has AutoScalingConfigurationSummaryList => (is => 'ro', isa => 'ArrayRef[Paws::AppRunner::AutoScalingConfigurationSummary]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::AppRunner::ListAutoScalingConfigurationsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AutoScalingConfigurationSummaryList => ArrayRef[L<Paws::AppRunner::AutoScalingConfigurationSummary>]

A list of summary information records for auto scaling configurations.
In a paginated request, the request returns up to C<MaxResults> records
for each call.


=head2 NextToken => Str

The token that you can pass in a subsequent request to get the next
result page. It's returned in a paginated request.


=head2 _request_id => Str


=cut

1;