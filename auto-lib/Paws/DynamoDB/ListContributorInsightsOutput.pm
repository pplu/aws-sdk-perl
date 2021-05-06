
package Paws::DynamoDB::ListContributorInsightsOutput;
  use Moose;
  has ContributorInsightsSummaries => (is => 'ro', isa => 'ArrayRef[Paws::DynamoDB::ContributorInsightsSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::ListContributorInsightsOutput

=head1 ATTRIBUTES


=head2 ContributorInsightsSummaries => ArrayRef[L<Paws::DynamoDB::ContributorInsightsSummary>]

A list of ContributorInsightsSummary.


=head2 NextToken => Str

A token to go to the next page if there is one.


=head2 _request_id => Str


=cut

1;